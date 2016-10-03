using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using casualshoes.data_access_layer;
using casualshoes.models;

namespace casualshoes
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Customer customer = Connection.LoginCustomer(txt_login_mail.Text, txt_login_password.Text);

            if (customer != null)
            {
                //store login variables in session
                Session["customername"] = customer.Firstname;
                Session["customerlastname"] = customer.Lastname;
                Session["customerId"] = customer.customerid;//storing customerid so we know who is adding products and which order to display in the cart
                Session["customeradress"] = customer.Adress;
                Session["customercity"] = customer.City;
                Session["customerzip"] = customer.ZipCode;


                Response.Redirect("~/pages/Home.aspx");
            }
            else
            {
                lbl_login_msg.Text = "Login failed";
            }




            //todo: login a user. checks if the username/mail matches the password on the same row, and hence logs the person into the website
            //todo: fix the IsMember stored procedure. if someone has the same mail and password then we get an error (Subquery returned more than 1 value)

            //TODO: IMPLEMENT THE SPLOGINSUCEEDED HERE TO MAKE LOGIC FOR WHEN LOGIN SUCCEEDES OF FAILS
            //string connectionString = "Data Source=.;Initial Catalog=CasualShoesDB;Integrated Security=True;";
            //Admin DBAdmin = new Admin();

            ////-------------------------DB OPEN-------------------------
            //DBAdmin.OpenConn(connectionString);
            //if (DBAdmin.LoginSuccedded(txt_login_mail.Text, txt_login_password.Text))
            //{
            //    DBAdmin.CloseConn();
            //    //-------------------------DB CLOSED-------------------------

            //    lbl_login_msg.ForeColor = System.Drawing.Color.Green;
            //    lbl_login_msg.Text = "Login Succeeded";

            //    //TODO: add logic for a logged in user (remove login icon and put "hello [username] instead
            //    ((Site1)this.Master).LoginAndWelcome= "Welcome [users fullname]";
            //}
            //else
            //{
            //    lbl_login_msg.ForeColor = System.Drawing.Color.Red;
            //    lbl_login_msg.Text= "Login failed";
            //}




        }
    }
}