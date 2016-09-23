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
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //Reset all boxes to empty when the eg. customer has been added to database or something similiar
                //firstname.Text = "";
                //lastname.Text = "";
                //adress.Text = "";
                //city.Text = "";
                //zip.Text = "";
                //password.Value = "";
                //emailUsername.Text = "";
            }
        }

        protected void btn_submitNew_Click(object sender, EventArgs e)
        {

            if (Page.IsValid == true)
            {
                Admin DBAdmin = new Admin();
                string connectionString = "Data Source=.;Initial Catalog=CasualShoesDB;Integrated Security=True;";

                Customer NewCustomer = new Customer(firstname.Text,lastname.Text, adress.Text, city.Text, zip.Text, password.Value, emailUsername.Text);

                DBAdmin.OpenConn(connectionString);
                DBAdmin.InsertNewCustomer(NewCustomer);
                DBAdmin.CloseConn();

                lbl_msg.ForeColor = System.Drawing.Color.Green;
                lbl_msg.Text = "Du är nu en medlem på CasualShoes.com!";
            }
            else
            {
                //customer does not get added to database if all validation doesnt succeed
                lbl_msg.ForeColor = System.Drawing.Color.Red;
                lbl_msg.Text = "Du har inte fyllt i formuläret fullständigt. Se över dina uppgifter...";
            }
        }
    }
}