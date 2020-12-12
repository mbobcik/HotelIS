using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using RelationalDatabaseConnector;
using NoSQLConnector;
using HotelModel;

namespace ProjectionEngineAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProjectionController : ControllerBase
    {
        private static ProjectionQueries SQL = new ProjectionQueries();
        private static ClusterCommands NoSQL = new ClusterCommands();

        [HttpPost("rooms")]
        public ActionResult<DataTable> ProjectRooms([FromBody] Message message)
        {
            var rooms = SQL.GetRooms();
            NoSQL.InsertRooms(rooms, message.Truncate);
            return message.SendSQLQueryResult ? rooms : null;
        }
    }
}