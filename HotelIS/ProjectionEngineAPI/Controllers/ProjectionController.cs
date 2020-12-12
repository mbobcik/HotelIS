﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using RelationalDatabaseConnector;
using NoSQLConnector;

namespace ProjectionEngineAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProjectionController : ControllerBase
    {
        [HttpPost("rooms")]
        public ActionResult<DataTable> ProjectRooms()
        {
            var x = new ProjectionQueries();
            var y = x.GetRooms();
            var a = new ClusterCommands();
            a.InsertRooms(y);
            return y;
        }
    }
}