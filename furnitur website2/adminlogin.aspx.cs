using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace furnitur_website2
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {
                Response.Redirect("addproduct.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            string user = Tbadminlogin.Text;
            string pass = tbadminpassword.Text;
            bool flag = false;
            for(int i=0;i<=dv.Table.Rows.Count-1;i++)
            {
                if(dv.Table.Rows[i]["username"].ToString()==user&&
                    dv.Table.Rows[i]["password"].ToString()==pass)
                {
                    string password = dv.Table.Rows[i]["password"].ToString();
                    flag = true;
                }
                if(flag==true)
                {
                    Session["username"] = user;
                    Response.Redirect("adminhome.aspx");

                }
                else
                {
                    Lblmessage.Text = "invalid credentials!!";
                }
            }
        }
    }
}