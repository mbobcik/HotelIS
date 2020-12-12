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
            string queryByHotel = @"INSERT INTO rooms.byHotel (hotel, floor, roomNumber, cost, guestFullName, toClean )
                                    VALUES (?, ?, ?, ?, ?, ?)";
            string queryByGuest = @"INSERT INTO rooms.byGuest (hotel, floor, roomNumber, cost, guestFullName, toClean )
                                    VALUES (?, ?, ?, ?, ?, ?)";

            var commandByHotel = NoSQL.guestsKeyspace.Prepare(queryByHotel);
            var commandByGuest = NoSQL.guestsKeyspace.Prepare(queryByGuest);
            var batch = new BatchStatement();

            if (truncate)
            {
                NoSQL.guestsKeyspace.Execute("TRUNCATE TABLE rooms.byHotel");
                NoSQL.guestsKeyspace.Execute("TRUNCATE TABLE rooms.byGuest");
            }
            int i = 0;
            foreach (DataRow row in roomsTable.Rows)
            {
                string guestFullName = (row.Field<string>("firstName") == null
                                        && row.Field<string>("lastName") == null)
                                        ? "Uninhabited"
                                        : row.Field<string>("firstName") + " " + row.Field<string>("lastName");

                batch.Add(commandByHotel.Bind(row.Field<string>("hotel"), 
                                              row.Field<int>("floor"),
                                              row.Field<int>("roomNumber"),
                                              (float)row.Field<int>("cost"),
                                              guestFullName,
                                              row.Field<bool>("toClean")))
                     .Add(commandByGuest.Bind(row.Field<string>("hotel"),
                                              row.Field<int>("floor"),
                                              row.Field<int>("roomNumber"),
                                              (float)row.Field<int>("cost"),
                                              guestFullName,
                                              row.Field<bool>("toClean")));

                if (i == 50)
                {
                    NoSQL.roomsKeyspace.Execute(batch);
                    batch = new BatchStatement();
                    i = -1;
                }
                i++;
            }
            NoSQL.roomsKeyspace.Execute(batch);
        }
    }
}
