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
        public ActionResult<RowSet> GetListUnoccupied([FromBody] Hotel hotel)
        {
            RowSet result = RoomQuery.ToOccupy(hotel);
            return result; // takhle to vrací jenom pole polí s hodnotami rádků a sloupců, chtělo by to nějak ručně zkonvertovat na ten DataTable, i guess
        }

        //GetUnoccupiedCheapest

        //GetListDirty 


    }
}