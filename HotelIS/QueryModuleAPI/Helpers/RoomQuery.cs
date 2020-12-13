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

        internal static DataTable ToOccupy(Hotel hotel)
        {
            DataTable result;
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

        internal static DataTable ToOccupyCheapest(Hotel hotel)
        {
            DataTable unoccupied = ToOccupy(hotel);
            var resultRow = unoccupied.Rows
                .Cast<DataRow>().AsQueryable()
                .OrderBy(r => r.Table.Columns.IndexOf("cost"))
                .FirstOrDefault();

            DataTable result = unoccupied.Clone();
            result.Clear();
            result.Rows.Add(resultRow.ItemArray);

            return result;
        }
    }
}
