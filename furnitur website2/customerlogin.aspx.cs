using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace furnitur_website2
{
    public partial class customerlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnlogin_Click(object sender, EventArgs e)
        {
            bool flag = false;
            string email = Tbuserlogin.Text.ToLower();
            string pass = tbuserpassword.Text;
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            for(int i=0;i<=dv.Table.Rows.Count-1;i++)
            {
                if(dv.Table.Rows[i]["emailid"].ToString().ToLower()==email&&
                    dv.Table.Rows[i]["password"].ToString()==pass)
                {
                    flag = true;
                    Session["emailid2"] = email;
                    Session["fname"] = dv.Table.Rows[i]["firstname"].ToString();
                    Session["address"] = dv.Table.Rows[i]["address"].ToString();
                    break;
                }
            }
            if(flag==false)
            {
                Lblmessage.Text = "Check your email/username or password!";
            }
            else
            {
                if (Session["cartlistsession"]!=null)
                {
                    Response.Redirect("PlaceOrder.aspx");
                }
                Response.Redirect("CustomerHome.aspx");
            }
        }
    }
}