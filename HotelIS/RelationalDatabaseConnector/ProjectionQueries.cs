using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using HotelModel;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace RelationalDatabaseConnector
{
    public class ProjectionQueries
    {
        private SQLConnect SQL;
        public ProjectionQueries()
        {
            SQL = new SQLConnect();
        }

        public DataTable GetRooms()
        {
            string query = @"
                SELECT h.name as hotel, r.floor as floor, r.roomNumber as roomNumber,
                       r.price AS cost, g.firstName as firstName, g.lastName as lastName, r.toClean as toClean
                FROM rooms r
                    INNER JOIN hotels h ON h.id = r.hotel
                    INNER JOIN guests g ON g.id = r.guest
                ORDER BY hotel ASC, floor ASC, roomNumber ASC";
            var dataTable = new DataTable();
            using (MySqlCommand command = new MySqlCommand(query, SQL.connection))
            {
                var dataReader = command.ExecuteReader();
                dataTable.Load(dataReader);
                dataReader.Dispose();
            }
            return dataTable;
        }
    }
}
