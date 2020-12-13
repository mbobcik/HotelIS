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

        public List<CassandraRoom> GetRoomToOccupy(int id)
        {
            string query = $"{selectRoomsToOccupy} where hotelId={id}";
            return GetRoomToOccupyFiltered(query);
        }

        public List<CassandraRoom> GetRoomToOccupy(string name)
        {
            string query = $"{selectRoomsToOccupy} where hotel='{name}'";
            return GetRoomToOccupyFiltered(query);
        }

        public List<CassandraRoom> GetRoomToOccupy()
        {
            return GetRoomToOccupyFiltered(selectRoomsToOccupy);
        }

        private List<CassandraRoom> GetRoomToOccupyFiltered(string query)
        {
            var statement = new SimpleStatement(query);
            statement.SetPageSize(1000);
            List<CassandraRoom> result = NoSQL.guestsKeyspace.Execute(statement).ToCassandraRoom();
            return result;
        }
        

    }
}
