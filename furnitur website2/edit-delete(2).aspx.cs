using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace furnitur_website2
{
    public partial class edit_delete_2_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                Tbproid.Text = Request.QueryString["pid"];
                DataView dv = (DataView)SqlDataSourceproduct.Select(DataSourceSelectArguments.Empty);
                for(int i=0;i<=dv.Table.Rows.Count-1;i++)
                {
                    if(dv.Table.Rows[i]["productid"].ToString()==Tbproid.Text)
                    {
                        rbmaincate.SelectedValue = dv.Table.Rows[i]["maincategory"].ToString();
                        rbmaincate_SelectedIndexChanged(null, null);
                        ttbname.Text = dv.Table.Rows[i]["productname"].ToString();
                        tbdescription.Text = dv.Table.Rows[i]["description"].ToString();
                        Ddlbrand.SelectedValue = dv.Table.Rows[i]["brand"].ToString();
                        tbprice.Text = dv.Table.Rows[i]["price"].ToString();
                        ddlprimaterial.SelectedValue = dv.Table.Rows[i]["primarymaterial"].ToString();
                        ddldiscount.SelectedValue = dv.Table.Rows[i]["discount"].ToString();
                        Tbnetprice.Text = dv.Table.Rows[i]["netprice"].ToString();
                        rblstatus.SelectedValue = dv.Table.Rows[i]["status"].ToString();
                        ddlcatname.SelectedValue = dv.Table.Rows[i]["categoryname"].ToString();
                        Imgprod.ImageUrl= dv.Table.Rows[i]["picture"].ToString();
                        HiddenFieldpicture.Value= dv.Table.Rows[i]["picture"].ToString();
                        break;

                    }
                }


            }
        }

        protected void rbmaincate_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSourcecategory.Select(DataSourceSelectArguments.Empty);
            SqlDataSourceprimarymaterial.Select(DataSourceSelectArguments.Empty);
            SqlDataSourcebrand.Select(DataSourceSelectArguments.Empty);
        }

        protected void ddldiscount_SelectedIndexChanged(object sender, EventArgs e)
        {
            int price = Convert.ToInt32(tbprice.Text);
            int discount = Convert.ToInt32(ddldiscount.SelectedItem.Text);
            int discount_price = Convert.ToInt32((discount * price) / 100.0);
            int net_price = price - discount_price;
            Tbnetprice.Text = net_price.ToString();
            HiddenFielddiscountprice.Value = discount.ToString();

        }

        protected void Btnupdate_Click(object sender, EventArgs e)
        {
            bool fileflag = false;
            if(fileuploadpicture.HasFile==true)
            {
                string photofile = fileuploadpicture.FileName.ToLower();
                if(photofile.EndsWith("jpg")||photofile.EndsWith("png")||photofile.EndsWith("jpeg")||
                    photofile.EndsWith("bnp"))
                {
                    fileuploadpicture.SaveAs(Server.MapPath("images/" + photofile));
                    HiddenFieldpicture.Value = "images/" + photofile;
                }
                else
                {
                    lblmessage.Text = "Invalid Top Photo File";
                    fileflag = true;
                }
            }
            if(fileflag==false)
            {
                SqlDataSourceproduct.Update();
                lblmessage.Text = "product updated";
            }
        }

        protected void Btndel_Click(object sender, EventArgs e)
        {
            SqlDataSourceproduct.Delete();
            lblmessage.Text = "product deleted successfully";
        }
    }
}