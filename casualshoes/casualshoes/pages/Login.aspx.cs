using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using casualshoes.data_access_layer;

namespace casualshoes
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            //todo: login a user. checks if the username/mail matches the password on the same row, and hence logs the person into the website
            //todo: fix the IsMember stored procedure. if someone has the same mail and password then we get an error (Subquery returned more than 1 value)
            
            //TODO: IMPLEMENT THE SPLOGINSUCEEDED HERE TO MAKE LOGIC FOR WHEN LOGIN SUCCEEDES OF FAILS
        }
    }
}