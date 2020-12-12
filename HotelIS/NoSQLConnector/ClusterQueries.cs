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
        public ClusterQueries()
        {
            NoSQL = new CassandraConnect();
        }

        public RowSet GetRoomToOccupy(int id)
        {
            return GetRoomToOccupyFiltered("hotelid", id.ToString());
        }

        public RowSet GetRoomToOccupy(string name)
        {
            return GetRoomToOccupyFiltered("hotel", name);
        }

        private RowSet GetRoomToOccupyFiltered(string column, string value)
        {
            string query = $"select * from rooms.tooccupy  where {column}='{value}'";
            var statement = new SimpleStatement(query);
            statement.SetPageSize(1000);
            RowSet result = NoSQL.guestsKeyspace.Execute(statement);
            return result;
        }

        public RowSet GetRoomToOccupy()
        {
            throw new NotImplementedException();
        }

        static DataTable ToDataTable(RowSet rows)
        {
            DataTable result = new DataTable();
            
            foreach (var row in rows)
            {
                result.NewRow();
            }

            return result;
        }
    }
}
