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

            //CALL ORDERDETAILDAL METHOD THAT TAKES IN CURRENT CUSTOMERID, PRODUCTID, QUANTITY AND MODELSIZE

            //SPLIT THE COMMANDARGUMENTS AND PLACE THEM IN THEIR OWN VARIABLES
            List<string> commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' }).ToList();

            //int orderid;
            int productid = Convert.ToInt32(commandArgs[0]);
            string productname = commandArgs[1];
            int quantity;
            int modelsize = Convert.ToInt32(DataList1.FindControl("ddl_modelsize"));
            //OrderDetail newOrderDetail = new OrderDetail(orderid, productid, quantity, modelsize);
            Response.Write("productid: " + productid + ", productname: " + productname);





        }
    }
}