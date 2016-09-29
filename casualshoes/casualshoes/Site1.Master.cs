using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace casualshoes
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        //this is the login text, until a user logs in, then changes to welcome username
        public string LoginAndWelcome
        {
            get { return this.fig_login_welcome.InnerText; }
            set { this.fig_login_welcome.InnerText = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Search_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/pages/SearchResult.aspx?Term=" + HttpUtility.UrlEncode(SearchBoxID.Text));
        }
    }
}