using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

using casualshoes.models;

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

        public static Customer LoginCustomer(string EmailUsername, string password)
        {
            //Check if user exists
            string sqlQuery = string.Format(@"SELECT COUNT(CustomerId)
                            FROM Customer
                            WHERE EmailUsername = '{0}'"
                            ,EmailUsername);
            comm.CommandText = sqlQuery;

            try
            {
                conn.Open();
                int amoutOfUsers = (int)comm.ExecuteScalar();

                if (amoutOfUsers == 1)
                {
                    //user exists, check if the passwords match
                    sqlQuery = string.Format("SELECT Password FROM Customer WHERE EmailUsername = '{0}'", EmailUsername);
                    comm.CommandText = sqlQuery;
                    string dbPassword = comm.ExecuteScalar().ToString();

                    if(dbPassword == password)
                    {
                        //Login Success! usernames and passwords match!
                        //retrieve further information about the user directly from database
                        sqlQuery = string.Format("SELECT CustomerId,Firstname, Lastname,Adress, ZipCode,City FROM Customer WHERE EmailUsername='{0}'", EmailUsername);
                        comm.CommandText = sqlQuery;

                        SqlDataReader reader = comm.ExecuteReader();
                        Customer customer = null;

                        while (reader.Read())
                        {
                            int customerid = reader.GetInt32(0);
                            string firstname = reader.GetString(1);
                            string lastname = reader.GetString(2);
                            string adress = reader.GetString(3);
                            string zip = reader.GetString(4);
                            string city = reader.GetString(5);

                            customer = new Customer(customerid, firstname, lastname, adress, city, zip, password, EmailUsername);
                        }
                        return customer;
                    }
                    else
                    {
                        //passwords do not match
                        return null;
                    }
                }
                else
                {
                    //user doesnt exist
                    return null;
                }
            }
            finally 
            {
                conn.Close();
            }

        }
    }
}