using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using HotelModel;
using System.Data;
using QueryModuleAPI.Helpers;
using Cassandra;
using System.Data.Common;

namespace QueryModuleAPI.Controllers
{
    [Route("api/query/[controller]")]
    [ApiController]
    public class RoomController : ControllerBase
    {
        [HttpGet("unoccupied")]
        public ActionResult<List<CassandraRoom>> GetListUnoccupied([FromBody] Hotel hotel)
        {
            Console.WriteLine("Get Unoccupied in " + hotel.name);
            List<CassandraRoom> result = RoomQuery.ToOccupy(hotel);
            return result; 
        }

        [HttpGet("unoccupied/cheapest")]
        public ActionResult<CassandraRoom> GetUnoccupiedCheapest([FromBody] Hotel hotel)
        {
            CassandraRoom result = RoomQuery.ToOccupyCheapest(hotel);
            return result;
        }

        [HttpGet("toclean")]
        public ActionResult<DataTable> GetListDirty ([FromBody] Hotel hotel)
        {
            throw new NotImplementedException();
        }


    }
}