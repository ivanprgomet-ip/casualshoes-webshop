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

            Connection.comm.CommandText = insertOrderDetailQuery;
            Connection.conn.Open();
            Connection.comm.ExecuteNonQuery();
            Connection.conn.Close();
        }
    }
}