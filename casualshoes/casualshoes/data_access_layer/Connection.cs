using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace casualshoes.data_access_layer
{
    public static class Connection
    {
        private static SqlConnection conn;
        private static SqlCommand comm;

        static Connection()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["CasualShoesDBConnectionString"].ToString();
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand("", conn);
        }
    }
}