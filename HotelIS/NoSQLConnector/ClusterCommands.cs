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

        public void InsertRooms(DataTable roomsTable)
        {
            string queryByHotel = @"INSERT INTO rooms.byHotel (hotel, floor, roomNumber, cost, guestFullName, toClean )
                                    VALUES (?, ?, ?, ?, ?, ?)";
            string queryByGuest = @"INSERT INTO rooms.byGuest (hotel, floor, roomNumber, cost, guestFullName, toClean )
                                    VALUES (?, ?, ?, ?, ?, ?)";

            var commandByHotel = NoSQL.guestsKeyspace.Prepare(queryByHotel);
            var commandByGuest = NoSQL.guestsKeyspace.Prepare(queryByGuest);
            var batch = new BatchStatement();

            foreach (DataRow row in roomsTable.Rows)
            {
                batch.Add(commandByHotel.Bind(row.Field<string>("hotel"), 
                                              row.Field<int>("floor"),
                                              row.Field<int>("roomNumber"),
                                              (float)row.Field<int>("cost"),
                                              row.Field<string>("firstName") + " " + row.Field<string>("lastName"),
                                              row.Field<bool>("toClean")))
                     .Add(commandByGuest.Bind(row.Field<string>("hotel"),
                                              row.Field<int>("floor"),
                                              row.Field<int>("roomNumber"),
                                              (float)row.Field<int>("cost"),
                                              row.Field<string>("firstName") + " " + row.Field<string>("lastName"),
                                              row.Field<bool>("toClean")));
            }
            NoSQL.roomsKeyspace.Execute(batch);
        }
    }
}
