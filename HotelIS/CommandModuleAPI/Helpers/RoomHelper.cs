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
        private static DatabaseCommands database = new DatabaseCommands();

        public static bool AddGuestToEmptyRoom(string roomId, Room room)
        {
            return database.UpdateRoomColumn(roomId, "guest", room.guest.ToString(), "AND guest='1'");
        }

        internal static bool FreeRoom(string roomId)
        {
            bool result = database.UpdateRoomColumn(roomId, "guest", "1") && SetDirtyRoom(roomId);
            return result;
        }

        internal static bool SetCleanRoom(string roomId)
        {
            return database.UpdateRoomColumn(roomId, "toClean", "0");
        }

        internal static bool SetDirtyRoom(string roomId)
        {
            return database.UpdateRoomColumn(roomId, "toClean", "1");
        }

        internal static bool SetRoomPrice(string roomId, Room room)
        {
            return database.UpdateRoomColumn(roomId, "price", room.price.ToString());
        }
    }
}
