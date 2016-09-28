using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace casualshoes.data_access_layer
{
    public class ProductDAL
    {





        public static ArrayList GetProductsByCategory(string productCategory)
        {
            ArrayList list = new ArrayList();
            string sqlQuery = string.Format(@"SELECT Product.ProductId,Product.ProductName,product.ProductPrice, Brand.BrandName, Size.Size, Category.CategoryName
                                            FROM Brand INNER JOIN
                                            Product ON Brand.BrandId = Product.ProductBrandId INNER JOIN
                                            Category ON Product.ProductCategoryId = Category.CategoryId INNER JOIN
                                            Size ON Product.ProductSizeId = Size.SizeId
                                            WHERE CategoryName LIKE 'Sneakers'");

            try
            {
                Connection.conn.Open();
                Connection.comm.CommandText = sqlQuery;
                SqlDataReader reader = Connection.comm.ExecuteReader();

                while(reader.Read())//while reader returns true there are rows to be read
                {
                    int id = reader.GetInt32(0);
                    string productName = reader.GetString(1);
                    float productPrice = reader.GetFloat(2);
                    string brandName = reader.GetString(3);
                    string productSize = reader.GetString(4);
                    string categoryName = reader.GetString(5); 
                }
            }
            finally
            {
                Connection.conn.Close();
            }
        }
    }
}