using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Net.Http;
using System.Net.Http.Json;
using HotelModel;
using System.Net.Mime;
using System.Text;
using System.Text.Json.Serialization;
using System.Text.Json;

namespace HotelISFrontEnd
{
    class RoomQuery
    {
        private static readonly HttpClient client = new HttpClient();
        private static string endpoint = "http://localhost:5050/api/query/room";

        internal static List<Hotel> GetListUnoccupied(string hotel)
        {
            Hotel h = new Hotel() { name = hotel };
            var request = new HttpRequestMessage
            {
                Method = HttpMethod.Get,
                RequestUri = new Uri($"{endpoint}/unoccupied"),
                Content = new StringContent(JsonSerializer.Serialize(h), Encoding.UTF8)
            };
            var x =  client.SendAsync(request);
            x.Wait();
            var result = x.Result.Content.ReadFromJsonAsync(typeof(List<Hotel>));
            result.Wait();
            var f = result.Result;
            return null;
        }
    }
}
