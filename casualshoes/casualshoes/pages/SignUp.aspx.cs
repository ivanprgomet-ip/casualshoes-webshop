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
            if (Page.IsValid == true)
            {
                //creating new user/customer
                Customer NewCustomer = new Customer(firstname.Text, lastname.Text, adress.Text, city.Text, zip.Text, password.Value, emailUsername.Text);
                //registering the new user and printing message in label
                lbl_msg.ForeColor = System.Drawing.Color.Green;
                lbl_msg.Text = Connection.RegisterNewCustomer(NewCustomer);
            }
            else //customer does not get added to database if all validation doesnt succeed
            {
                lbl_msg.ForeColor = System.Drawing.Color.Red;
                lbl_msg.Text = "Du har inte fyllt i formuläret fullständigt. Se över dina uppgifter...";
            }








            //string connectionString = "Data Source=.;Initial Catalog=CasualShoesDB;Integrated Security=True;";
            //Admin DBAdmin = new Admin();

            ////-------------------------DB OPEN-------------------------
            //DBAdmin.OpenConn(connectionString);
            //if (DBAdmin.UsernameAlreadyExists(emailUsername.Text))
            //{
            //    DBAdmin.CloseConn();
            //    //-------------------------DB CLOSED-------------------------

            //    //customer does not get added to database if another customer with same username already exists
            //    lbl_msg.ForeColor = System.Drawing.Color.Red;
            //    lbl_msg.Text = "En medlem med detta mail/användarnamn finns redan... Var snäll och ange annan mail";
            //}
            //else
            //{
            //    if (Page.IsValid == true)
            //    {
            //        Customer NewCustomer = new Customer(firstname.Text, lastname.Text, adress.Text, city.Text, zip.Text, password.Value, emailUsername.Text);

            //        //-------------------------DB OPEN-------------------------
            //        DBAdmin.OpenConn(connectionString);
            //        DBAdmin.InsertNewCustomer(NewCustomer);
            //        DBAdmin.CloseConn();
            //        //-------------------------DB CLOSED-------------------------

            //        lbl_msg.ForeColor = System.Drawing.Color.Green;
            //        lbl_msg.Text = "Du är nu en medlem på CasualShoes.com!";
            //    }
            //    else //customer does not get added to database if all validation doesnt succeed
            //    {
            //        lbl_msg.ForeColor = System.Drawing.Color.Red;
            //        lbl_msg.Text = "Du har inte fyllt i formuläret fullständigt. Se över dina uppgifter...";
            //    }
            //}


        }
    }
}