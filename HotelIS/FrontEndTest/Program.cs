using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using HotelModel;
using System.Net.Http;

namespace HotelISFrontEnd
{
    class Program
    {
        static void Main(string[] args)
        {
            string hotel = "Hotel Cirrus Shake";
            Console.WriteLine($"Zákazník je v hotelu {hotel} ");
            Console.WriteLine("Systém obsahuje množství různě obsazených pokojů.  Zákazník přijde na recepci a chce se ubytovat. Recepce se dotáže na volné pokoje. ");
            RoomQuery.GetListUnoccupied(hotel);
        }
    }
}
