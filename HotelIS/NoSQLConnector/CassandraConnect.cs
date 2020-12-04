using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cassandra;

namespace NoSQLConnector
{
    public class CassandraConnect
    {
        private Cluster cluster;
        private static ISession guestsKeyspace;
        private static ISession roomsKeyspace;

        public CassandraConnect()
        {
            // Configure the builder with your cluster's contact points
            cluster = Cluster.Builder()
                                 .AddContactPoints("127.0.0.1")
                                 .Build();

            // Connect to the nodes using a keyspace
            guestsKeyspace = cluster.Connect("guests");
            roomsKeyspace = cluster.Connect("rooms");
        }

    }
}
    