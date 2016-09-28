using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

using casualshoes.data_access_layer;
using casualshoes.models;
using System.Text;

namespace casualshoes.pages
{
    public partial class TESTING : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }
        private void FillPage()
        {
            ArrayList productList = new ArrayList();
            if (!IsPostBack)
            {
                productList = ProductDAL.GetProductsByCategory("%");
            }
            else
            {
                productList = ProductDAL.GetProductsByCategory(DropDownList2.SelectedValue);
            }
            StringBuilder sb = new StringBuilder();


            foreach (Product p in productList)
            {
                sb.Append(string.Format(
                    @"<table class='ProductsPanel'>
                    <tr>
                        <th rowspan='6' width='150px'>
                            <img runat='server' src='{6}' />
                        </th>

                        <th width='50px'>Name: </th>
                        <td>{0}</td>
                    </tr>
                     <tr>
                         <th>Price: </th>
                        <td>{1}</td>
                    </tr>
                    <tr>
                         <th>brand: </th>
                        <td>{2}</td>
                    </tr>
                    <tr>
                         <th>Description: </th>
                        <td>{3}</td>
                    </tr>
                    <tr>
                         <th>size: </th>
                        <td>{4}</td>
                    </tr>
                    <tr>
                         <th>category: </th>
                        <td>{5}</td>
                    </tr>
                </table>",p.price,p.name,p.productBrand,p.description,p.size,p.productCategory,p.imgUrl));
            }
            lbl_output.Text = sb.ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //FillPage();
        }
    }
}