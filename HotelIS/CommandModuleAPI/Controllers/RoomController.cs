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
            return RoomHelper.AddGuestToEmptyRoom(roomId, room).ToString();
        }

        [HttpPut("free/{roomId}")]
        public ActionResult<string> FreeCommand(string roomId)
        {
            return RoomHelper.FreeRoom(roomId).ToString();
        }

        [HttpPut("clean/{roomId}")]
        public ActionResult<string> CleanCommand(string roomId)
        {
            return RoomHelper.SetCleanRoom(roomId).ToString();
        }

        [HttpPut("dirty/{roomId}")]
        public ActionResult<string> DirtyCommand(string roomId)
        {
            return RoomHelper.SetDirtyRoom(roomId).ToString();
        }

        [HttpPut("price/{roomId}")]
        public ActionResult<string> ChangePriceCommand(string roomId, [FromBody] Room room)
        {
            return RoomHelper.SetRoomPrice(roomId, room).ToString();
        }


    }
}