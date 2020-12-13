using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using CommandModuleAPI.Helpers;
using HotelModel;

namespace CommandModuleAPI.Controllers
{
    [Route("api/command/[controller]")]
    [ApiController]
    public class RoomController : ControllerBase
    {
        [HttpPut("occupy/{roomId}")]
        public ActionResult<string> OccupyCommand(string roomId, [FromBody] Room room)
        {
            var result = RoomHelper.AddGuestToEmptyRoom(roomId, room).ToString();
            ProjectionHelper.TruncateAndProjectRooms();
            return result;
        }

        [HttpPut("free/{roomId}")]
        public ActionResult<string> FreeCommand(string roomId)
        {
            var result = RoomHelper.FreeRoom(roomId).ToString();
            ProjectionHelper.TruncateAndProjectRooms();
            return result;
        }

        [HttpPut("clean/{roomId}")]
        public ActionResult<string> CleanCommand(string roomId)
        {
            var result = RoomHelper.SetCleanRoom(roomId).ToString();
            ProjectionHelper.TruncateAndProjectRooms();
            return result;
        }

        [HttpPut("dirty/{roomId}")]
        public ActionResult<string> DirtyCommand(string roomId)
        {
            var result = RoomHelper.SetDirtyRoom(roomId).ToString();
            ProjectionHelper.TruncateAndProjectRooms();
            return result;
        }

        [HttpPut("price/{roomId}")]
        public ActionResult<string> ChangePriceCommand(string roomId, [FromBody] Room room)
        {
            var result = RoomHelper.SetRoomPrice(roomId, room).ToString();
            ProjectionHelper.TruncateAndProjectRooms();
            return result;
        }
    }
}