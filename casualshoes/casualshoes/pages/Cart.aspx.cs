using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using casualshoes.data_access_layer;

namespace casualshoes
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        double totalPrice = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if someone is logged in then show the cart, else redirect to login page
            if ((string)Session["customername"] == null)
            {
                //redirects anonymous customers to login before adding to cart
                Response.Redirect("~/pages/Login.aspx");
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //loop thru each row and calculate total price for order, and thats why we use the rowdatabound event

            //first time the event is raised, is on the header, and we dont wanna do anything when the event is raised for the header
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                totalPrice += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "total"));
            }
            //when we arrive too footer row, display the sum
            else if (e.Row.RowType == DataControlRowType.Footer)
            {

                e.Row.Cells[1].Text = "Att Betala: ";
                e.Row.Cells[1].Font.Bold = true;

                e.Row.Cells[7].Text = totalPrice.ToString() + ":-";
                e.Row.Cells[7].Font.Bold = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //går ej betälla med tom varukorg
            if (GridView1.Rows.Count > 0)
            {
                ClearTheGridview();//and also from database?
                Response.Redirect("~/pages/ConfirmedBuy.aspx");
            }
            else
                lbl_cartMsg.Text = "Det går ej att beställa med en tom varukorg!";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/pages/Home.aspx");
        }

        protected void ClearTheGridview()
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                GridView1.DeleteRow(i);
            }
            GridView1.DataBind();
        }
    }
}