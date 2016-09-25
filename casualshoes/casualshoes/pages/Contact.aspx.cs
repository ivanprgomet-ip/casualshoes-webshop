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
        //TODO: FIX bug unobtrusive validation mode error in this code
        //protected void btn_sendMail_Click(object sender, EventArgs e)
        //{


        //    if (Page.IsValid==true)
        //    {
        //        using (MailMessage message = new MailMessage(txt_email.Text.ToString(),"dalius_pamparas@gmail.com","this is a subject by "+txt_fullname.Text,txt_comments.Text))
        //        {
        //            SmtpClient client = new SmtpClient();
        //            client.Host = "smtp.gmail.com";
        //            client.Send(message);
        //        }
        //        lbl_sentMessage.Text = $"Tack {txt_fullname.Text}, vi ska svara så snabt som möjligt";
        //    }
        //    else
        //    {
        //        lbl_sentMessage.Text = "Du har inte fyllt i formuläret fullständigt!";
        //    }

        //}
        -------------------------------------------------------
        public void btnSend_Click1(object sender, EventArgs e)
        {
           
            MailMessage msg = new MailMessage();
            msg.To.Add(new MailAddress("projekt.eshop@gmail.com"));
            msg.From = new MailAddress(txtEmail.Text);
            msg.Subject = txtSubject.Text;
            msg.Body = txtName.Text + Environment.NewLine + txtMessage.Value;
            SmtpClient client = new SmtpClient();
            client.UseDefaultCredentials = false;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.Credentials = new NetworkCredential("projekt.eshop","qazqaz123");
            client.EnableSsl = true;
            client.Send(msg);
           

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