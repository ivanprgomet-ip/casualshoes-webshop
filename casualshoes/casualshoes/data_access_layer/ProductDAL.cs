using casualshoes.models;
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
            string sqlQuery = string.Format(@"SELECT Product.ProductId, Product.ProductName,Product.ProductPrice, Brand.BrandName, Category.CategoryName,Product.ProductDescription, Product.ImgUrl
                                            FROM Brand INNER JOIN
                                            Product ON Brand.BrandId = Product.ProductBrandId INNER JOIN
                                            Category ON Product.ProductCategoryId = Category.CategoryId
                                            WHERE CategoryName LIKE '{0}'", productCategory);

            try
            {
                Connection.conn.Open();
                Connection.comm.CommandText = sqlQuery;
                SqlDataReader reader = Connection.comm.ExecuteReader();

                while (reader.Read())//while reader returns true, there are rows to be read
                {
                    int id = reader.GetInt32(0);
                    string productName = reader.GetString(1);
                    decimal productPrice = reader.GetDecimal(2);
                    string brandName = reader.GetString(3);
                    string categoryName = reader.GetString(4);
                    string productDescription = reader.GetString(5);
                    string imgUrl = reader.GetString(6)+"1.jpg"; //we only want to see the main representative image when scrolling products

                    Product product = new Product(id, productName, productPrice, productDescription, brandName, categoryName,imgUrl);
                    list.Add(product);
                }
            }
            finally
            {
                Connection.conn.Close();
            }
            return list;
        }

    }
}