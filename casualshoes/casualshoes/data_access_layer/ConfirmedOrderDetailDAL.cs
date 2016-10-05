using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace casualshoes.data_access_layer
{
    public class ConfirmedOrderDetailDAL
    {
        public static void AddToConfirmedOrderDetails(string orderId)
        {
            //Add All the values from the gridview into the ConfirmedOrderDetailTable
            string sqlQuery = string.Format(@"INSERT INTO ConfirmedOrderDetail (OrderId, ProductId, Quantity, ModelSize)
                                              SELECT OrderId, ProductId, Quantity, ModelSize
                                              FROM OrderDetail
                                                WHERE OrderId = {0}", orderId);
            Connection.comm.CommandText = sqlQuery;
            try
            {
                Connection.conn.Open();
                Connection.comm.ExecuteNonQuery();
            }
            finally
            {
                Connection.conn.Close();
            }
        }
    }
}