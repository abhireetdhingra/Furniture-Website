using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace furnitur_website2
{
    public partial class Edit_deleteproducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Tbproid.Text = Request.QueryString["pid"];

                DataView dv = (DataView)SqlDataSource2edit.Select(DataSourceSelectArguments.Empty);
                for (int i = 0; i <= dv.Table.Rows.Count - 1; i++)
                {
                    if (dv.Table.Rows[i]["productid"].ToString() == Tbproid.Text)
                    {
                        rbmaincate.SelectedValue = dv.Table.Rows[i]["maincategory"].ToString();
                        rbmaincate_SelectedIndexChanged(null, null);
                        ddlcatname.SelectedValue = dv.Table.Rows[i]["categoryname"].ToString();
                        ttbname.Text = dv.Table.Rows[i]["productname"].ToString();
                        Ddlbrand.SelectedValue = dv.Table.Rows[i]["brand"].ToString();
                        tbprice.Text = dv.Table.Rows[i]["price"].ToString();
                        ddlprimaterial.SelectedValue = dv.Table.Rows[i]["primarymaterial"].ToString();
                        ddldiscount.SelectedValue = dv.Table.Rows[i]["discount"].ToString();
                        Tbnetprice.Text = dv.Table.Rows[i]["netprice"].ToString();
                        ddlcatname.SelectedValue = dv.Table.Rows[i]["categoryname"].ToString();
                        tbdescription.Text = dv.Table.Rows[i]["description"].ToString();
                        Imgprod.ImageUrl = dv.Table.Rows[i]["picture"].ToString();
                        HiddenField1_photo.Value = dv.Table.Rows[i]["picture"].ToString();
                        rblstatus.SelectedValue = dv.Table.Rows[i]["status"].ToString();
                        break;
                    }
                }
            }
        }   


        protected void rbmaincate_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        }

        protected void ddldiscount_SelectedIndexChanged(object sender, EventArgs e)
        {
            int price = Convert.ToInt32(tbprice.Text);
            int dis = Convert.ToInt32((ddldiscount.SelectedItem.Text));
            int discount_price = Convert.ToInt32((price * dis) / 100.0);
            int net_price = price - discount_price;
            Tbnetprice.Text = net_price.ToString();
            HiddenField1_discount.Value = dis.ToString();
        }

        protected void Btndel_Click(object sender, EventArgs e)
        {
            SqlDataSource2edit.Delete();
            lblmessage.Text = "Product deleted";
        }

        protected void Btnupdate_Click(object sender, EventArgs e)
        {
            bool fileflag = false;
            
            if (fileuploadpicture.HasFile==true)
            {
                string photo = fileuploadpicture.FileName.ToLower();
                if (photo.EndsWith("jpg") || photo.EndsWith("png") || photo.EndsWith("bnp") || photo.EndsWith("jpeg"))
                {
                    fileuploadpicture.SaveAs(Server.MapPath("images/" + photo));
                    HiddenField1_photo.Value = "images/" + photo;
                }
                else
                {
                    lblmessage.Text = "Incorrect picture format.Only add jpg,png,jpeg or bnp pictures!!";
                    fileflag = true;
                }
            }            
            
            if(fileflag==false)
            {
                SqlDataSource2edit.Update();
                lblmessage.Text = "updated!";
            }
            
        }

        protected void ddlprimaterial_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSourcematerial.Select(DataSourceSelectArguments.Empty);
        }

        protected void Ddlbrand_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSourcebrand.Select(DataSourceSelectArguments.Empty);
        }
    }
}