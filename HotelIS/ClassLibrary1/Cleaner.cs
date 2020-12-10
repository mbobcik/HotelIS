using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HotelModel
{
    public class Cleaner : Model
    {
        public string name { get; set; }
        public Hotel hotel { get; set; }
    }
}
