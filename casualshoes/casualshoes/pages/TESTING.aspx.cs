using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

using casualshoes.data_access_layer;
using casualshoes.models;

namespace casualshoes.pages
{
    public partial class TESTING : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //FillPage();
        }
        //private void FillPage()
        //{
        //    ArrayList productList = ProductDAL.GetProductsByCategory(DropDownList1.SelectedValue);
        //    foreach(Product p in productList)
        //    {
        //        string s = string.Format(@"{0}{1}{2}{3}{4}{5}",p.name,p.productBrand,p.productCategory,p.price,p.size,p.description);
        //        lbl_output.Text = s;
        //    }
        //}

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //FillPage();
            //GridView1.DataBind();
        }
    }
}