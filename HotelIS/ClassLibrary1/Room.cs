using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HotelModel
{
    public class Room : Model
    {
        public int roomNumber { get; set; }
        public int floor { get; set; }
        public int price { get; set; }
        public int toClean { get; set; }
        public int guest { get; set; }
        public int hotel { get; set; }

        public static Room Empty() => 
            new Room()
            {
               roomNumber = 0,
               floor = 0,
               price = 0,
               toClean = 0,
               guest = 1,
               hotel = 1
            };
        
    }
}
