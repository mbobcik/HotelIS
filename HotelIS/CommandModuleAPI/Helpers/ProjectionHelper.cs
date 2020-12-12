using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Net.Http;
using HotelModel;

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
            _ = client.PostAsJsonAsync<Message>(endpoint + "rooms", new Message() { Truncate = false }).ConfigureAwait(false);
        }

        internal static void TruncateAndProjectRooms()
        {
            _ = client.PostAsJsonAsync(endpoint + "rooms", new Message() { Truncate = true}).ConfigureAwait(false);
        }
    }
}
