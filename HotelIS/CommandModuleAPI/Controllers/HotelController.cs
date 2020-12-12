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
            var result = HotelHelper.AddRoom(room).ToString();
            ProjectionHelper.ProjectRooms();
            return result;
        }

        [HttpDelete("room/{roomId}")]
        public ActionResult<string> RemoveRoomCommand(string roomId)
        {
            var result = HotelHelper.RemoveRoom(roomId).ToString();
            // ProjectionHelper.ProjectRooms();
            return result;
        }

        [HttpPost]
        public ActionResult<string> AddHotelCommand([FromBody] Hotel hotel)
        {
            var result = HotelHelper.AddHotel(hotel).ToString();
            ProjectionHelper.ProjectRooms();
            return result;
        }

        [HttpDelete("{hotelId}")]
        public ActionResult<string> RemoveHotelCommand(string hotelId)
        {
            var result = HotelHelper.RemoveHotel(hotelId).ToString();
            // ProjectionHelper.ProjectRooms();
            return result;
        }
    }
}