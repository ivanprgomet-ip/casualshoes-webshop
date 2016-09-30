using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using casualshoes.data_access_layer;
using System.Collections.Specialized;

using casualshoes.models;

namespace casualshoes
{
    public partial class WebForm11 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btn_addToCart_Command(object sender, CommandEventArgs e)
        {

            //CHECK IF ANY (USER) IS LOGGED IN 
            //CREATE AN ORDERID FOR THE CUSTOMERID THAT CLICKED THE BUTTON
            
            List<string> commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' }).ToList();

            int orderid = 4;//ONLY TESTING PURPOSES
            int productid = Convert.ToInt32(commandArgs[0]);
            string productname = commandArgs[1];
            int quantity = Convert.ToInt32(num_quantity.Value);
            int modelsize = Convert.ToInt32(ddl_modelsize.SelectedValue);
            OrderDetail newOrderDetail = new OrderDetail(orderid, productid, quantity, modelsize);

            OrderDetailDAL.AddNewOrderDetail(newOrderDetail);

            Response.Write($"orderid:{orderid}, productid: {productid}, quantity: {quantity}, modelsize: {modelsize}");
        }
    }
}