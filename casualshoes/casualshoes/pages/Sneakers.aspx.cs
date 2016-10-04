using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace casualshoes
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SortByName_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [ProductId], [ImgUrl], [ProductPrice], FORMAT(ProductPrice, 'C', 'sv-SE') AS RoundedPrice, [ProductName] FROM [Product] WHERE ([ProductCategoryId] = @ProductCategoryId) ORDER by ProductName";
        }

        protected void SortByPrice_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [ProductId], [ImgUrl], [ProductPrice], FORMAT(ProductPrice, 'C', 'sv-SE') AS RoundedPrice, [ProductName] FROM [Product] WHERE ([ProductCategoryId] = @ProductCategoryId) ORDER by ProductPrice";
        }

        protected void SortByBrand_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [ProductId], [ImgUrl], [ProductPrice], FORMAT(ProductPrice, 'C', 'sv-SE') AS RoundedPrice, [ProductName] FROM [Product] WHERE ([ProductCategoryId] = @ProductCategoryId) ORDER by ProductBrandId";
        }
    }
}