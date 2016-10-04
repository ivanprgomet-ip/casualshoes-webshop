using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace casualshoes.data_access_layer
{
    public class OrderHeadDAL
    {
        public static int CreateNewOrderHead(int customerid)
        {
            //TODO: create new order and return the orderid so that we can use it
            string sqlQuery = string.Format($"INSERT INTO OrderHead VALUES('{customerid}')");
            Connection.comm.CommandText = sqlQuery;
            int orderid = -1;

            try
            {
                Connection.conn.Open();
                Connection.comm.ExecuteNonQuery();

                sqlQuery = string.Format(@"SELECT OrderHead.OrderId
                                        FROM Customer INNER JOIN
                                        OrderHead ON Customer.CustomerId = OrderHead.CustomerId
				                        WHERE Customer.CustomerId = {0}", customerid);
                Connection.comm.CommandText = sqlQuery;
                orderid = (int)Connection.comm.ExecuteScalar();
                return orderid;
            }
            finally 
            {
                Connection.conn.Close();
            }

        }
    }
}