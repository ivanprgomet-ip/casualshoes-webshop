using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace casualshoes.models
{
    public class OrderDetail
    {
        public int orderid;
        public int productid;
        public int quantity;
        public int modelsize;

        public OrderDetail(int orderid, int productid, int quantity, int modelsize)
        {
            this.orderid = orderid;
            this.productid = productid;
            this.quantity = quantity;
            this.modelsize = modelsize;
        }
    }
}