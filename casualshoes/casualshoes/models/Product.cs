using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace casualshoes.models
{
    public class Product
    {
        public int id;
        public string name;
        public decimal price;
        public string description;
        public int size;
        public string imgUrl;

        public string productBrand;
        public string productCategory;


        public Product(int id, string name, decimal price, string description, int size)
        {
            this.id = id;
            this.name = name;
            this.price = price;
            this.description = description;
            this.size = size;
        }

        public Product(int id, string name, decimal price, string description, int size, string productBrand, string productCategory)
        {
            
            this.id = id;
            this.name = name;
            this.price = price;
            this.description = description;
            this.size = size;

            //custom: these attributes are inner joined and retrieved programatically, they are not part of the product table in the database
            this.productBrand = productBrand;
            this.productCategory = productCategory;
        }

        public Product(int id, string name, decimal price, string description, int size, string productBrand, string productCategory,string imgUrl)
        {

            this.id = id;
            this.name = name;
            this.price = price;
            this.description = description;
            this.size = size;
            this.imgUrl = imgUrl;

            //custom: these attributes are inner joined and retrieved programatically, they are not part of the product table in the database
            this.productBrand = productBrand;
            this.productCategory = productCategory;
        }
    }
}