using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using NoSQLConnector;
using HotelModel;
using System.Data;
using Cassandra;

namespace QueryModuleAPI.Helpers
{
    public class RoomQuery
    {
        public static ClusterQueries NoSQL = new ClusterQueries();

        internal static List<CassandraRoom> ToOccupy(Hotel hotel)
        {
            List<CassandraRoom> result;
            if (hotel.id != 0)
            {
                result = NoSQL.GetRoomToOccupy(hotel.id);
            }
            else if (hotel.name != null)
            {
                result = NoSQL.GetRoomToOccupy(hotel.name);
            }
            else
            {
                result = NoSQL.GetRoomToOccupy();
            }
            return result;
        }

        internal static CassandraRoom ToOccupyCheapest(Hotel hotel)
        {
            List<CassandraRoom> unoccupied = ToOccupy(hotel);
            var result = unoccupied
                .OrderBy(c => c.Cost)
                .FirstOrDefault();

            return result;
        }

        internal static List<CassandraRoom> ToClean(Hotel hotel)
        {
            List<CassandraRoom> result;
            if (hotel.id != 0)
            {
                result = NoSQL.GetRoomToClean(hotel.id);
            }
            else if (hotel.name != null)
            {
                result = NoSQL.GetRoomToClean(hotel.name);
            }
            else
            {
                result = NoSQL.GetRoomToClean();
            }
            return result;
        }

        internal static List<CassandraRoom> ByHotel(Hotel hotel)
        {
            List<CassandraRoom> result;
            if (hotel.id != 0)
            {
                result = NoSQL.GetRoomByHotel(hotel.id);
            }
            else if (hotel.name != null)
            {
                result = NoSQL.GetRoomByHotel(hotel.name);
            }
            else
            {
                result = NoSQL.GetRoomByHotel();
            }
            return result;
        }
    }
}
