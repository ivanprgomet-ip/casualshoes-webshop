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
        public static SqlConnection conn;
        public static SqlCommand comm;

        static Connection()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["CasualShoesDBConnectionString"].ToString();
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand("", conn);
        }
    }
}