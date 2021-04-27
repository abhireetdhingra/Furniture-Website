using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using System.Net.Mail;

namespace furnitur_website2
{
    public partial class Recoverpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                                              
        }

        protected void Btnrecover_Click(object sender, EventArgs e)
        {
            bool flag = false;
            string emailid = Tbemail.Text.ToLower();
            string question = Ddlquestion.SelectedItem.Text;
            string answer = Tbanswer.Text;
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            for (int i = 0; i <= dv.Table.Rows.Count - 1; i++)
            {
                if (dv.Table.Rows[i]["emailid"].ToString().ToLower() == emailid &&
                    dv.Table.Rows[i]["question"].ToString() == question &&
                    dv.Table.Rows[i]["answer"].ToString() == answer)
                {
                    flag = true;
                    break;
                }
            }

            if (flag == false)
            {
                Lblmsg.Text = "User Authentication Failed!!";
            }
            else
            {
                string password = Membership.GeneratePassword(6, 1);
                HiddenFieldpass.Value = password;
                //mail sending procedure
                MailMessage mailmsg = new MailMessage();
                mailmsg.To.Add(emailid);
                mailmsg.From = new MailAddress("woodstock0001000@gmail.com");
                mailmsg.Subject = "password recovery";
                mailmsg.Body = "Hello user!. You have requested to change your password!";

                SmtpClient client = new SmtpClient();
                client.Host= "smtp.gmail.com"; ;
                client.Port = 587;
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential("woodstock0001000@gmail.com", "11110000ws");

                try
                {
                    client.Send(mailmsg);
                    SqlDataSource1.Update();
                    Lblmsg.Text = "Check your mail for new password";
                }
                catch (Exception ex)
                {
                    Lblmsg.Text = ex.Message;
                }

            }
        }
    }
}