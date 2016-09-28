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
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CasualShoesDBConnectionString"].ConnectionString);
            conn.Open();
            string sql = $"SELECT c.CategoryName from Product AS p INNER JOIN Category AS c ON p.ProductCategoryid = c.Categoryid";
            using (SqlCommand cmd = new SqlCommand(sql,conn))
            {
                SqlDataReader reader = cmd.ExecuteReader(); 
                while (reader.Read())
                {
                    //ListView1 = 
                }
            }
        }
    }
}