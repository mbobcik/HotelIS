using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Net.Http;

namespace CommandModuleAPI.Helpers
{
    public class ProjectionHelper
    {
        private static readonly HttpClient client;
        private static string endpoint = "";

        static ProjectionHelper()
        {
            client = new HttpClient();
            endpoint = "http://localhost:5005/api/projection/"; // TODO - get from config file
        }

        internal static void ProjectRooms()
        {
            _ = client.PostAsync(endpoint + "rooms", new StringContent("")).ConfigureAwait(false);
        }
    }
}
