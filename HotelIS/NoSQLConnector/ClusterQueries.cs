using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HotelModel;
using Cassandra;
using Cassandra.Data;

namespace NoSQLConnector
{
    public class ClusterQueries
    {
        private CassandraConnect NoSQL;
        private const string selectRoomsToOccupy = "select * from rooms.tooccupy ";
        public ClusterQueries()
        {
            NoSQL = new CassandraConnect();
        }

        public DataTable GetRoomToOccupy(int id)
        {
            string query = $"{selectRoomsToOccupy} where hotelId={id}";
            return GetRoomToOccupyFiltered(query);
        }

        public DataTable GetRoomToOccupy(string name)
        {
            string query = $"{selectRoomsToOccupy} where hotel='{name}'";
            return GetRoomToOccupyFiltered(query);
        }

        public DataTable GetRoomToOccupy()
        {
            return GetRoomToOccupyFiltered(selectRoomsToOccupy);
        }

        private DataTable GetRoomToOccupyFiltered(string query)
        {
            var statement = new SimpleStatement(query);
            statement.SetPageSize(1000);
            DataTable result = NoSQL.guestsKeyspace.Execute(statement).ToDataTable("rooms.toOccupy");
            return result;
        }
        

    }
}
