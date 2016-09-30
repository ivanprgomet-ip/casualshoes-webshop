using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using casualshoes.data_access_layer;
using System.Collections.Specialized;
namespace casualshoes
{
    public partial class WebForm11 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void btn_addToCart_Command(object sender, CommandEventArgs e)
        {
            //takes in the current products ID
            Response.Write(e.CommandArgument.ToString());
        }
    }
}