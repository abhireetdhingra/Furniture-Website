using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace furnitur_website2
{
    public partial class Orderplaced : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["cartlistsession"] = null;
            string message = "Hello, " + Session["fname"] + " your order having amount ₹" + Session["totalamount"] + "has beenplaced successfully." +
                "Thanks for visiting our website! We hope that we bring quality marked products to you";

            string emailid = Session["emailid2"].ToString();

            MailMessage mailmsg = new MailMessage();
            mailmsg.To.Add(emailid);
            mailmsg.From = new MailAddress("woodstock0001000@gmail.com");
            mailmsg.Subject = "Order Placed for WoodStock";
            mailmsg.Body = message;

            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.EnableSsl = true;
            client.Credentials = new System.Net.NetworkCredential("woodstock0001000@gmail.com", "11110000ws");

            client.Send(mailmsg);
        }
    }
}