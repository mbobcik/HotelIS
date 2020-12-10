using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HotelModel;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace RelationalDatabaseConnector
{
    public class DatabaseCommands
    {
        private SQLConnect SQL;
        public DatabaseCommands()
        {
            SQL = new SQLConnect();
        }

        public bool UpdateRoomColumn(string id, string column, string value, string condition = "")
        {
            string query = "UPDATE rooms SET " + column + "='" + value + "' WHERE id ='" + id + "' " + condition;
            MySqlCommand command = new MySqlCommand(query, SQL.connection);
            var executed = command.ExecuteReader();

            return command.ExecuteNonQuery().Equals(1);
        }

        public int InsertRoom(Room room)
        {
            string query = @"INSERT INTO `rooms` (`id`, `roomNumber`, `floor`, `price`, `toClean`, `guest`, `hotel`) VALUES (NULL, @room, @floor, @price, @toClean, @guest, @hotel);
                             SELECT LAST_INSERT_ID();";
            int result;
            using (MySqlCommand command = new MySqlCommand(query, SQL.connection))
            {
                command.Parameters.AddWithValue("room", room.roomNumber);
                command.Parameters.AddWithValue("floor", room.floor);
                command.Parameters.AddWithValue("price", room.price);
                command.Parameters.AddWithValue("toClean", room.toClean);
                command.Parameters.AddWithValue("guest", room.guest);
                command.Parameters.AddWithValue("hotel", room.hotel);
                var res = command.ExecuteReader();
                res.Read();
                result = res.GetInt32(0);
                res.Dispose();
            }
            return result;
        }

        private bool RemoveFrom(string table, string id)
        {
            string query = "DELETE FROM " + table + " WHERE `id`=@id";
            MySqlCommand command = new MySqlCommand(query, SQL.connection);
            command.Parameters.AddWithValue("id", id);
            return command.ExecuteNonQuery().Equals(1);
        }

        public bool RemoveRoom(string id)
        {
            return RemoveFrom("rooms", id);
        }

        public int InsertHotel(Hotel hotel)
        {
            string query = @"INSERT INTO `hotels` (`id`, `name`) VALUES (NULL, @name);
                             SELECT LAST_INSERT_ID(); ";
            int result;
            using (MySqlCommand command = new MySqlCommand(query, SQL.connection))
            {
                command.Parameters.AddWithValue("name", hotel.name);
                var res = command.ExecuteReader();
                res.Read();
                result = res.GetInt32(0);
                res.Dispose();

            }
            return result;
        }

        public bool RemoveHotel(string id)
        {
            return RemoveFrom("hotels", id);
        }

    }
}
