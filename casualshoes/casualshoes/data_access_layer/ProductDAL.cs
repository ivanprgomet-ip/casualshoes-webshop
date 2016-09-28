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
            string sqlQuery = string.Format(@"SELECT Product.ProductId, Product.ProductName,Product.ProductPrice, Brand.BrandName, ProductSize, Category.CategoryName,Product.ProductDescription
                                            FROM Brand INNER JOIN
                                            Product ON Brand.BrandId = Product.ProductBrandId INNER JOIN
                                            Category ON Product.ProductCategoryId = Category.CategoryId
				                            WHERE CategoryName LIKE '{0}'", productCategory);

            try
            {
                Connection.conn.Open();
                Connection.comm.CommandText = sqlQuery;
                SqlDataReader reader = Connection.comm.ExecuteReader();


                //todo: skippar denna raden??
                while (reader.Read())//while reader returns true, there are rows to be read
                {
                    int id = reader.GetInt32(0);
                    string productName = reader.GetString(1);
                    float productPrice = reader.GetFloat(2);
                    string brandName = reader.GetString(3);
                    int productSize = reader.GetInt32(4);
                    string categoryName = reader.GetString(5);
                    string productDescription = reader.GetString(6);

                    Product product = new Product(id, productName, productPrice, productDescription, productSize, brandName, categoryName);
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