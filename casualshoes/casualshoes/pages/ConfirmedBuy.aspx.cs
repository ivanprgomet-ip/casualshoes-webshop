using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace casualshoes
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string confirmationMsg = string.Format($"Firstname: {Session["customername"]}<br /> Lastname: {Session["customerlastname"]}<br />Customer ID: {Session["customerId"] }<br /> Adress: {Session["customeradress"] }<br /> City: {Session["customercity"] }<br /> Zip: {Session["customerzip"] }");

            lbl_confirmedBuyMsg.Text = confirmationMsg;
        }
    }
}