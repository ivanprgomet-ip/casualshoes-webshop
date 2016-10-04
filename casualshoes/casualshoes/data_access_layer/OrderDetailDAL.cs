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

        public static string AddNewOrderDetail(OrderDetail newOrderDetail)
        {
            //adds new product into orderdetail table for specific orderid
            string insertOrderDetailQuery = $"INSERT INTO OrderDetail VALUES({newOrderDetail.orderid},{newOrderDetail.productid},{newOrderDetail.quantity},{newOrderDetail.modelsize})";

            try
            {
                Connection.comm.CommandText = insertOrderDetailQuery;
                Connection.conn.Open();
                Connection.comm.ExecuteNonQuery();
                return "Produkten har lagts till i kundkorgen!";
            }
            catch (Exception)
            {
                return "Produkten har INTE lagts till i kundkorgen!";
            }
            finally
            {
                Connection.conn.Close();
            }
          
        }
        public static void ClearOrderDetails(int orderid)
        {
            //TODO: WHY IS THIS NOT WORKING CORRECTLY?
            string sqlQuery = string.Format($"DELETE FROM OrderDetail WHERE OrderId='{orderid}'");
            Connection.comm.CommandText = sqlQuery;

            try
            {
                Connection.conn.Open();
                SqlDataReader reader = Connection.comm.ExecuteReader();
                Connection.comm.ExecuteNonQuery();
            }
            finally
            {
                Connection.conn.Close();
            }
        }
    }
}