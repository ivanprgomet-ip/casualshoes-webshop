using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using casualshoes.models;

namespace casualshoes.data_access_layer
{
    public class Admin
    {
        private SqlConnection _sqlConn = null;

        public void OpenConn(string connectionstring)
        {
            _sqlConn = new SqlConnection(connectionstring);
            _sqlConn.Open();
        }
        public void CloseConn()
        {
            _sqlConn.Close();
            _sqlConn.Dispose();
        }

        public void InsertNewCustomer(Customer NewCustomer)
        {
            //TODO: make this command a stored procedure instead
            string comm = $"INSERT INTO Customer(Firstname, Lastname, Adress, City, ZipCode, Password, EmailUsername) Values('{NewCustomer.Firstname}','{NewCustomer.Lastname}','{NewCustomer.Adress}','{NewCustomer.City}','{NewCustomer.ZipCode}','{NewCustomer.Password}','{NewCustomer.EmailUsername}')";
            using (SqlCommand sqlComm = new SqlCommand(comm, _sqlConn))
            {
                sqlComm.ExecuteNonQuery();
            }
        }
        public bool UsernameAlreadyExists(string emailUsername)
        {
            int ReturnedCustomerID = 0;
            using (SqlCommand sqlComm = new SqlCommand("spEmailExists", _sqlConn))
            {
                sqlComm.CommandType = System.Data.CommandType.StoredProcedure;

                //when adding parameter directly to sqlcommand, by default its in input parameter! so we dont have to specify parameterdirection.input here
                sqlComm.Parameters.AddWithValue("@Email", emailUsername);

                //creating output parameter and adding to sqlcomand object 
                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@MemberExists";//parameter name (see sp in database)
                outputParameter.SqlDbType = System.Data.SqlDbType.Bit;//parameter sql type
                outputParameter.Direction = System.Data.ParameterDirection.ReturnValue;
                sqlComm.Parameters.Add(outputParameter);

                //SqlParameter emailParameter = new SqlParameter("@Email", System.Data.SqlDbType.NVarChar);
                //emailParameter.Direction = System.Data.ParameterDirection.Input;
                //sqlComm.Parameters.Add(emailParameter);


                sqlComm.ExecuteNonQuery();
                ReturnedCustomerID = Convert.ToInt32(outputParameter.Value);
            }

            if (ReturnedCustomerID > 0)
                return true;
            else
                return false;
        }
        public bool LoginSuccedded(string email, string password)
        {
            int LoginSuccess = 0;

            using (SqlCommand sqlComm = new SqlCommand("spLoginSucceeded", _sqlConn))
            {
                sqlComm.CommandType = System.Data.CommandType.StoredProcedure;

                //inparameters of the stored procedure
                sqlComm.Parameters.AddWithValue("@Email", email);
                sqlComm.Parameters.AddWithValue("@Password", password);

                //return value of the stored procedure
                SqlParameter outputParameter = new SqlParameter();
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.ReturnValue;
                sqlComm.Parameters.Add(outputParameter);

                sqlComm.ExecuteNonQuery();
                LoginSuccess = (int)outputParameter.Value;
            }


            if (LoginSuccess == 1)
                return true;
            else
                return false;
        }

        //public void InsertAuthor(string firstname, string lastname)
        //{
        //    string comm = $"Insert Into Authors(Firstname, Lastname) Values('{firstname}','{lastname}')";
        //    using (SqlCommand sqlComm = new SqlCommand(comm, _sqlConn))
        //    {
        //        sqlComm.ExecuteNonQuery();
        //    }
        //}
        //public void DeleteAuthor(int id)
        //{
        //    string comm = $"DELETE FROM Authors WHERE AuthorID={id}";
        //    using (SqlCommand sqlComm = new SqlCommand(comm, _sqlConn))
        //    {
        //        sqlComm.ExecuteNonQuery();
        //    }
        //}
        //public void UpdateAuthorLastName(string lastName, int id)
        //{
        //    string comm = $"UPDATE Authors SET Lastname = '{lastName}' WHERE AuthorID = {id}";

        //    using (SqlCommand sqlComm = new SqlCommand(comm, _sqlConn))
        //    {
        //        sqlComm.ExecuteNonQuery();
        //    }
        //}

        //public List<Author> GetAllAuthorsToList()
        //{
        //    /*
        //        Extracts all the authors from the database 
        //        and puts them in a list of authors in csharp code. 
        //    */
        //    string comm = "SELECT * FROM Authors";
        //    List<Author> authorList = new List<Author>();

        //    using (SqlCommand sqlComm = new SqlCommand(comm, _sqlConn))
        //    {
        //        SqlDataReader reader = sqlComm.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            authorList.Add(new Author
        //            {
        //                AuthorID = (int)reader["AuthorID"],
        //                Firstname = (string)reader["Firstname"],
        //                Lastname = (string)reader["Lastname"]
        //            });
        //        }
        //    }
        //    return authorList;
        //}
        //public DataTable GetAllAuthorsToDataTable()
        //{
        //    DataTable dataTable = new DataTable();
        //    string comm = "SELECT * FROM Authors";

        //    using (SqlCommand sqlComm = new SqlCommand(comm, _sqlConn))
        //    {
        //        /*
        //            First we execute the command into the datareader, 
        //            then we pass the reader object into the dataTable.
        //        */
        //        SqlDataReader reader = sqlComm.ExecuteReader();
        //        dataTable.Load(reader);
        //    }
        //    return dataTable;
        //}
        //public void DisplayConnectionState()
        //{
        //    if (_sqlConn == null)
        //    {
        //        Console.WriteLine("Connection: Null");
        //    }
        //    else
        //    {
        //        if (_sqlConn.State == ConnectionState.Open)
        //        {
        //            Console.ForegroundColor = ConsoleColor.Green;
        //            Console.WriteLine("Connection: Open");
        //            Console.ResetColor();
        //        }
        //        else if (_sqlConn.State == ConnectionState.Closed)
        //        {
        //            Console.ForegroundColor = ConsoleColor.Red;
        //            Console.WriteLine("Connection: Closed");
        //            Console.ResetColor();
        //        }
        //    }

        //}
    }
}