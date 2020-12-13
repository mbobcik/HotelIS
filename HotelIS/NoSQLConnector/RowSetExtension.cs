using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Cassandra;
using HotelModel;

namespace NoSQLConnector
{
    public static class RowSetExtension
    {
        public static DataTable ToDataTable(this RowSet rows, string tableName)
        {
            DataTable result = new DataTable(tableName);
            var col = result.Columns.Add("rowNumber", typeof(int));
            col.AllowDBNull = false;
            col.Unique = true;
            col.AutoIncrement = true;
            foreach (CqlColumn column in rows.Columns)
            {
                result.Columns.Add(column.Name, column.Type);
            }

            foreach (var row in rows)
            {
                var newRow = result.NewRow();
                foreach (CqlColumn column in rows.Columns)
                {
                    newRow[column.Name] = row.GetValue(column.Type, column.Name);
                }
                result.Rows.Add(newRow);
            }

            return result;
        }

        public static List<CassandraRoom> ToCassandraRoom(this RowSet rows)
        {
            List<CassandraRoom> result = new List<CassandraRoom>();
            foreach (var row in rows)
            {
                CassandraRoom cr = new CassandraRoom()
                {
                    Hotel = row.GetValue<string>("hotel"),
                    Floor = row.GetValue<int>("floor"),
                    RoomNumber = row.GetValue<int>("roomnumber"),
                    Cost = row.GetValue<float>("cost"),
                    HotelId = row.GetValue<int>("hotelid"),
                    RoomId = row.GetValue<int>("roomid")
                };
                result.Add(cr);
            }
            return result;
        }

    }
}
