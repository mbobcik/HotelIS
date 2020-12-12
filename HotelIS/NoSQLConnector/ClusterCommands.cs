using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Cassandra;

namespace NoSQLConnector
{
    public class ClusterCommands
    {
        private CassandraConnect NoSQL;
        public ClusterCommands()
        {
            NoSQL = new CassandraConnect();
        }

        public void InsertRooms(DataTable roomsTable, bool truncate = false)
        {
            string queryByHotel = @"INSERT INTO rooms.byHotel (hotel, floor, roomNumber, cost, guestFullName, toClean, roomId, hotelId, guestId )
                                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            string queryByGuest = @"INSERT INTO rooms.byGuest (hotel, floor, roomNumber, cost, guestFullName, toClean, roomId, hotelId, guestId )
                                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            string queryToOccupy = @"INSERT INTO rooms.toOccupy (hotel, floor, roomNumber, cost, roomId, hotelId)
                                    VALUES (?, ?, ?, ?, ?, ?)"; 
            string queryToClean = @"INSERT INTO rooms.toClean (hotel, floor, roomNumber, roomId, hotelId)
                                    VALUES (?, ?, ?, ?, ?)";

            var commandByHotel = NoSQL.guestsKeyspace.Prepare(queryByHotel);
            var commandByGuest = NoSQL.guestsKeyspace.Prepare(queryByGuest);
            var commandToOccupy = NoSQL.guestsKeyspace.Prepare(queryToOccupy);
            var commandToClean = NoSQL.guestsKeyspace.Prepare(queryToClean);

            if (truncate)
            {
                TruncateKeyspace();
            }

            var batch = new BatchStatement();
            int i = 0;
            foreach (DataRow row in roomsTable.Rows)
            {
                bool unoccupied = row.Field<string>("firstName") == null
                                        && row.Field<string>("lastName") == null;
                string guestFullName = unoccupied
                                        ? "Unoccupied"
                                        : row.Field<string>("firstName") + " " + row.Field<string>("lastName");

                batch.Add(commandByHotel.Bind(row.Field<string>("hotel"), 
                                              row.Field<int>("floor"),
                                              row.Field<int>("roomNumber"),
                                              (float)row.Field<int>("cost"),
                                              guestFullName,
                                              row.Field<bool>("toClean"),
                                              row.Field<int>("roomId"),
                                              row.Field<int>("hotelId"),
                                              row.Field<int>("guestId")))
                     .Add(commandByGuest.Bind(row.Field<string>("hotel"),
                                              row.Field<int>("floor"),
                                              row.Field<int>("roomNumber"),
                                              (float)row.Field<int>("cost"),
                                              guestFullName,
                                              row.Field<bool>("toClean"),
                                              row.Field<int>("roomId"),
                                              row.Field<int>("hotelId"),
                                              row.Field<int>("guestId")));

                if(row.Field<bool>("toClean") == false && unoccupied) // insert into rooms.toOccupy
                {
                    batch.Add(commandToOccupy.Bind(row.Field<string>("hotel"),
                                              row.Field<int>("floor"),
                                              row.Field<int>("roomNumber"),
                                              (float)row.Field<int>("cost"), 
                                              row.Field<int>("roomId"),
                                              row.Field<int>("hotelId")));
                }

                if (row.Field<bool>("toClean")) // insert into rooms.toClean
                {
                     batch.Add(commandToClean.Bind(row.Field<string>("hotel"),
                                              row.Field<int>("floor"),
                                              row.Field<int>("roomNumber"),
                                              row.Field<int>("roomId"),
                                              row.Field<int>("hotelId")));
                }

                if (i == 10)
                {
                    NoSQL.roomsKeyspace.Execute(batch);
                    batch = new BatchStatement();
                    i = -1;
                }
                i++;
            }
            NoSQL.roomsKeyspace.Execute(batch);
        }

        private void TruncateKeyspace()
        {
            NoSQL.guestsKeyspace.Execute("TRUNCATE TABLE rooms.byHotel");
            NoSQL.guestsKeyspace.Execute("TRUNCATE TABLE rooms.byGuest");
            NoSQL.guestsKeyspace.Execute("TRUNCATE TABLE rooms.toOccupy");
            NoSQL.guestsKeyspace.Execute("TRUNCATE TABLE rooms.toClean");
        }
    }
}
