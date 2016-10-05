using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;



namespace casualshoes
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        
        public void btnSend_Click1(object sender, EventArgs e)
        {
           
            MailMessage msg = new MailMessage();
            msg.To.Add(new MailAddress("casual.shoes.project.noreply@gmail.com"));
            msg.From = new MailAddress("casual.shoes.project.noreply@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = txtName.Text + Environment.NewLine + txtMessage.Value + $"\nFrom: {txtEmail.Text}";
            SmtpClient client = new SmtpClient();
            client.UseDefaultCredentials = false;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.Credentials = new NetworkCredential("casual.shoes.project.noreply@gmail.com", "password place");
            client.EnableSsl = true;
            //client.Host = "localhost";
            client.Send(msg);

            if (Page.IsValid == true)
            {
                 stateEmail.Text = "Message sent";
            }
           
               
        }
      

        protected void btnReset_Click1(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtSubject.Text = "";
            txtMessage.Value = "";
        }
    }
}