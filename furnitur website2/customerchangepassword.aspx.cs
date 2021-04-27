using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace furnitur_website2
{
    public partial class customerchangepassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnchangepass_Click(object sender, EventArgs e)
        {
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            bool flag = false;
            string pass = TBoldpass.Text;
            string email = Session["emailid2"].ToString();
            for (int i = 0; i <= dv.Table.Rows.Count - 1; i++)
            {
                if (dv.Table.Rows[i]["emailid"].ToString() == email
                    && dv.Table.Rows[i]["password"].ToString() == pass)
                {
                    flag = true;
                }
            }
            if (flag == false)
            {
                Lblmsg.Text = "Invalid Old password";
            }
            else
            {
                SqlDataSource1.Update();
                Response.Redirect("Customerlogin.aspx");
            }
        }
    }
}   
