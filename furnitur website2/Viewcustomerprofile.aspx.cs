using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace furnitur_website2
{
    public partial class Viewcustomerprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["emailid2"]==null)
            {
                Response.Redirect("customerlogin.aspx");
            }
            Tbemail.Text = Session["emailid2"].ToString().ToLower();
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            for(int i=0;i<=dv.Table.Rows.Count-1;i++)
            {
                if(dv.Table.Rows[i].ToString().ToLower()==Tbemail.Text)
                {
                    Tbfirstname.Text = dv.Table.Rows[i]["firstname"].ToString();
                    Tblastname.Text = dv.Table.Rows[i]["lastname"].ToString();
                    Rblgender.SelectedItem.Text = dv.Table.Rows[i]["gender"].ToString();
                    Tbaddress.Text = dv.Table.Rows[i]["address"].ToString();
                    Tbmobile.Text = dv.Table.Rows[i]["mobile"].ToString();
                    HiddenField1photo.Value = dv.Table.Rows[i]["photo"].ToString();
                    Imguser.ImageUrl= dv.Table.Rows[i]["photo"].ToString();
                    break;
                }
            }
        }

       
    }
}