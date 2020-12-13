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

namespace QueryModuleAPI.Controllers
{
    [Route("api/query/[controller]")]
    [ApiController]
    public class RoomController : ControllerBase
    {
        [HttpGet("unoccupied")]
        public ActionResult<DataTable> GetListUnoccupied([FromBody] Hotel hotel)
        {
            Console.WriteLine("Get Unoccupied in " + hotel.name);
            DataTable result = RoomQuery.ToOccupy(hotel);
            return result; 
        }

        //GetUnoccupiedCheapest

        //GetListDirty 


    }
}