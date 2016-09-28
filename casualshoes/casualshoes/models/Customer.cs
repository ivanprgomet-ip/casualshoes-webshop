using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace casualshoes.models
{
    public class Customer
    {
        public string Firstname;
        public string Lastname;
        public string Adress;
        public string City;
        public string ZipCode;
        public string Password;
        public string EmailUsername;

        public Customer()
        {

        }
        public Customer(string firstname, string lastname, string adress, string city, string zipCode, string password, string emailUsername)
        {
            this.Firstname = firstname;
            this.Lastname = lastname;
            this.Adress = adress;
            this.City = city;
            this.ZipCode = zipCode;
            this.Password = password;
            this.EmailUsername = emailUsername;
        }
    }
}