using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using HotelModel;
using CommandModuleAPI.Helpers;

namespace CommandModuleAPI.Controllers
{
    [Route("api/command/[controller]")]
    [ApiController]
    public class HotelController : ControllerBase
    {
        [HttpPost("room")]
        public ActionResult<string> AddRoomCommand([FromBody] Room room)
        {
            return HotelHelper.AddRoom(room).ToString();
        }

        [HttpDelete("room/{roomId}")]
        public ActionResult<string> RemoveRoomCommand(string roomId)
        {
            return HotelHelper.RemoveRoom(roomId).ToString();
        }

        [HttpPost]
        public ActionResult<string> AddHotelCommand([FromBody] Hotel hotel)
        {
            return HotelHelper.AddHotel(hotel).ToString();
        }

        [HttpDelete("{hotelId}")]
        public ActionResult<string> RemoveHotelCommand(string hotelId)
        {
            return HotelHelper.RemoveHotel(hotelId).ToString();
        }
    }
}