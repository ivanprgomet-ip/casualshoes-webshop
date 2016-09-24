using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace casualshoes
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_sendMail_Click(object sender, EventArgs e)
        {
            

            if (Page.IsValid==true)
            {
                using (MailMessage message = new MailMessage(txt_email.Text.ToString(),"dalius_pamparas@gmail.com","this is a subject by "+txt_fullname.Text,txt_comments.Text))
                {
                    SmtpClient client = new SmtpClient();
                    client.Host = "smtp.gmail.com";
                    client.Send(message);
                }
                lbl_sentMessage.Text = $"Tack {txt_fullname.Text}, vi ska svara så snabt som möjligt";
            }
            else
            {
                lbl_sentMessage.Text = "Du har inte fyllt i formuläret fullständigt!";
            }

        }


    }
}