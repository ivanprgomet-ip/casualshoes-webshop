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
            string confirmationMsg = string.Format($"Thank you for ordering at CasualShoes.com! Please make sure the information below is correct: firstname: {Session["customername"]} lastname: {Session["customerlastname"]}{Session["customerId"] }{Session["customeradress"] }{Session["customercity"] }{Session["customerzip"] }");

            lbl_confirmedBuyMsg.Text = confirmationMsg;
        }
    }
}