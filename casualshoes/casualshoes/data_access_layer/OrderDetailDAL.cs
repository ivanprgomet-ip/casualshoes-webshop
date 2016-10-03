using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using casualshoes.models;

namespace casualshoes.data_access_layer
{
    public class OrderDetailDAL
    {

        internal static void AddNewOrderDetail(OrderDetail newOrderDetail)
        {
            //adds new product into orderdetail table for specific orderid
            string insertOrderDetailQuery = $"INSERT INTO OrderDetail VALUES({newOrderDetail.orderid},{newOrderDetail.productid},{newOrderDetail.quantity},{newOrderDetail.modelsize})";

            try
            {
                Connection.comm.CommandText = insertOrderDetailQuery;
                Connection.conn.Open();
                Connection.comm.ExecuteNonQuery();
            }
            finally
            {
                Connection.conn.Close();
            }
          
        }
        //internal static void ClearOrderDetails(int orderid)
        //{
        //    //TODO: FIX THIS SQLQUERY DELETE STATEMENT, ITS NOT CORRECT, check if the orderid value is getting through into the sqlquery
        //    string sqlQuery = string.Format($"DELETE FROM OrderDetail WHERE OrderId='{orderid}'");
        //    Connection.comm.CommandText = sqlQuery;

        //    try
        //    {
        //        Connection.conn.Open();
        //        Connection.comm.ExecuteNonQuery();
        //    }
        //    finally
        //    {
        //        Connection.conn.Close();
        //    }
        //}
    }
}