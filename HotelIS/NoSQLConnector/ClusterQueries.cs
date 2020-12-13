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
        private const string selectRoomsToClean = "select * from rooms.toclean ";
        private const string selectRoomsByHotel = "select * from rooms.byhotel ";

        public ClusterQueries()
        {
            NoSQL = new CassandraConnect();
        }

        public List<CassandraRoom> GetRoomToOccupy(int id)
        {
            string query = $"{selectRoomsToOccupy} where hotelId={id}";
            return Execute(query);
        }

        public List<CassandraRoom> GetRoomToOccupy(string name)
        {
            string query = $"{selectRoomsToOccupy} where hotel='{name}'";
            return Execute(query);
        }

        public List<CassandraRoom> GetRoomToOccupy()
        {
            return Execute(selectRoomsToOccupy);
        }

        public List<CassandraRoom> GetRoomToClean(int id)
        {
            string query = $"{selectRoomsToClean} where hotelId={id}";
            return Execute(query);
        }

       public List<CassandraRoom> GetRoomToClean(string name)
        {
            string query = $"{selectRoomsToClean} where hotel='{name}'";
            return Execute(query);
        }

        public List<CassandraRoom> GetRoomToClean()
        {
            return Execute(selectRoomsToClean);
        }

         private List<CassandraRoom> Execute(string query)
        {
            var statement = new SimpleStatement(query);
            statement.SetPageSize(1000);
            List<CassandraRoom> result = NoSQL.roomsKeyspace.Execute(statement).ToCassandraRoom();
            return result;
        }

        public List<CassandraRoom> GetRoomByHotel(string name)
        {
            string query = $"{selectRoomsByHotel} where hotel='{name}'";
            return Execute(query);
        }

        public List<CassandraRoom> GetRoomByHotel(int id)
        {
            string query = $"{selectRoomsByHotel} where hotelId={id}";
            return Execute(query);
        }

        public List<CassandraRoom> GetRoomByHotel()
        {
            return Execute(selectRoomsByHotel);
        }

    }
}
