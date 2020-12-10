using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;
using HotelModel;

namespace RelationalDatabaseConnector
{
    public class SQLConnect
    {
        //private const string connectionString = @"Server=127.0.0.1;Database=hotelis;Uid=demo;Pwd=demo";
        private MySqlConnection connection;
        private string server;
        private string database;
        private string user;
        private string password;
        private string port;
        private string connectionString;
        private string sslM;

        public SQLConnect()
        {
            server = "localhost";
            database = "hotelis";
            user = "root";
            password = "";
            port = "3306";
            sslM = "none";

            connectionString = String.Format("server={0};port={1};user id={2}; password={3}; database={4}; SslMode={5}", server, port, user, password, database, sslM);

            connection = new MySqlConnection(connectionString);
            connection.Open();
        }

        public bool UpdateRoomColumn(string id, string column, string value, string condition="")
        {
            string query = "UPDATE rooms SET " + column + "='" + value + "' WHERE id ='" + id + "' " + condition;
            MySqlCommand sqlCommand = new MySqlCommand(query, connection);
            var executed = sqlCommand.ExecuteReader();

            return executed.RecordsAffected.Equals(1);
        }

        
    }
}
