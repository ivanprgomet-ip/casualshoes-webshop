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
        protected void Page_Load(object sender, EventArgs e)
        {
            //check if a user is logged in
            if(Session["login"] != null)
            {
                lbl_login.Text = "Welcome " + Session["login"].ToString();
                lbl_login.Visible = true;
                LinkButton1.Text = "Logout";
            }
            else
            {
                lbl_login.Visible = false;
                LinkButton1.Text = "Login";
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //User logs in
            if(LinkButton1.Text == "Login")
            {
                Response.Redirect("~/pages/Login.aspx");
            }
            else
            {
                //user logs out
                Session.Clear();
                Response.Redirect("~/pages/Home.aspx");
            }
        }

        public void Search_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/pages/SearchResult.aspx?Term=" + HttpUtility.UrlEncode(SearchBoxID.Text));
        }

    }
}