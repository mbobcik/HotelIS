using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RelationalDatabaseConnector;
using HotelModel;

namespace CommandModuleAPI.Helpers
{
    public class HotelHelper
    {
        private static DatabaseCommands database = new DatabaseCommands();

        internal static int AddRoom(Room room)
        {
            return database.InsertRoom(room);
        }

        internal static bool RemoveRoom(string room)
        {
            return database.RemoveRoom(room);
        }

        internal static int AddHotel(Hotel hotel)
        {
            return database.InsertHotel(hotel);
        }

        internal static bool RemoveHotel(string hotel)
        {
            return database.RemoveHotel(hotel);
        }
    }
}
