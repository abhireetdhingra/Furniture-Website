using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace furnitur_website2
{
    public partial class Addbrands : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncatadd_Click(object sender, EventArgs e)
        {
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            bool flag = false;
            string maincat = Ddlcategory.SelectedItem.Text;
            string brandname = TBbrandname.Text;
            
            for (int i = 0; i <= dv.Table.Rows.Count-1; i++)
            {
                if (dv.Table.Rows[i]["maincategory"].ToString() == maincat &&
                    dv.Table.Rows[i]["brandname"].ToString().ToLower() == brandname)
                {
                    flag = true;
                }
                else
                {
                    flag = false;
                }
            }
            if(flag==true)
            {
                Lblmessage.Text = "Brand already exits!!";
            }
            else
            {
                SqlDataSource1.Insert();
                Lblmessage.Text = "Brand added successfully";
            }
            
        }
    }
}