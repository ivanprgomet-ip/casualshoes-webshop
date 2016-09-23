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

        }

        protected void btn_submitNew_Click(object sender, EventArgs e)
        {
            Admin DBAdmin = new Admin();
            string connectionString = "Data Source=.;Initial Catalog=CasualShoesDB;Integrated Security=True;";

            Customer NewCustomer = new Customer(firstname.Text,lastname.Text, adress.Text, city.Text, zip.Text, password.Value, emailUsername.Text);

            DBAdmin.OpenConn(connectionString);
            DBAdmin.InsertNewCustomer(NewCustomer);
            DBAdmin.CloseConn();
        }
    }
}