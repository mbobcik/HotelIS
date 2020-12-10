using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HotelModel;
using RelationalDatabaseConnector;

namespace CommandModuleAPI.Helpers
{
    public class RoomHelper
    {
        private static SQLConnect database = new SQLConnect();

        public static bool AddGuestToEmptyRoom(string roomId, Room room)
        {
            return database.UpdateRoomColumn(roomId, "guest", room.guest.ToString(), "AND guest='1'");
        }

        internal static object FreeRoom(string roomId)
        {
            return database.UpdateRoomColumn(roomId, "guest", "1");
        }

        internal static object SetCleanRoom(string roomId)
        {
            return database.UpdateRoomColumn(roomId, "toClean", "0");
        }

        internal static object SetDirtyRoom(string roomId)
        {
            return database.UpdateRoomColumn(roomId, "toClean", "1");
        }

        internal static object SetRoomPrice(string roomId, Room room)
        {
            return database.UpdateRoomColumn(roomId, "price", room.price.ToString());
        }
    }
}
