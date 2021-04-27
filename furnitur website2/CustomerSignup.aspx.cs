using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace furnitur_website2
{
    public partial class CustomerSignup1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                
            }
        }

       
        protected void btnregister_Click(object sender, EventArgs e)
        {
            
            bool flag = false;
            string email = Tbemail.Text;
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            for (int i = 0; i <= dv.Table.Rows.Count - 1; i++)
            {
                if (dv.Table.Rows[i]["emailid"].ToString() == email)
                {
                    flag = true;
                    break;
                }
            }
            if (flag == true)
            {
                Lblmessage.Text = "Email already taken!";
            }
            else
            {
                string filename = fileuploadpicture.FileName.ToLower();
                if (filename.EndsWith("jpg") || filename.EndsWith("jpeg") || filename.EndsWith("bmp") || filename.EndsWith("png"))
                {
                    fileuploadpicture.SaveAs(Server.MapPath("images/" + filename));
                    HiddenField1photo.Value = "images/" + filename;
                    SqlDataSource1.Insert();
                    Lblmessage.Text = "Customer added !";
                }
                else
                {
                    Lblmessage.Text = "invalid photo file";
                }

            }
        }
    }
}