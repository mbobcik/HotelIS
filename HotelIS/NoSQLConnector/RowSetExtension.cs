using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Cassandra;

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

    }
}
