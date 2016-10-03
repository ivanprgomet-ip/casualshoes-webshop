using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace casualshoes
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if someone is logged in then show the cart, else redirect to login page
            if ((string)Session["customername"] == null)
            {
                //redirects anonymous customers to login before adding to cart
                Response.Redirect("~/pages/Login.aspx");
            }
        }

       
    }
}