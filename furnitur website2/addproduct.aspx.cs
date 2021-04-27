using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace furnitur_website2
{
    public partial class addproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rbmaincate_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            SqlDataSourcebrand.Select(DataSourceSelectArguments.Empty);
            SqlDataSourcematerial.Select(DataSourceSelectArguments.Empty);
        }

        protected void ddldiscount_SelectedIndexChanged(object sender, EventArgs e)
        {
            int price = Convert.ToInt32 (tbprice.Text);
            int dis = Convert.ToInt32((ddldiscount.SelectedItem.Text));
            int discount_price = Convert.ToInt32((price * dis) / 100.0);
            int net_price = price-discount_price;
            Tbnetprice.Text = net_price.ToString();
            HiddenField1_discount.Value = dis.ToString();

        }

        protected void btnaddproduct_Click(object sender, EventArgs e)
        {
            bool flag = false;
            string photo = fileuploadpicture.FileName.ToLower();
            if(photo.EndsWith("jpg")||photo.EndsWith("png")||photo.EndsWith("bnp")||photo.EndsWith("jpeg"))
            {
                flag = true;
            }
            if(flag==false)
            {
                lblmessage.Text = "Incorrect picture format.Only add jpg,png,jpeg or bnp pictures!!";
            }
            else
            {
                fileuploadpicture.SaveAs(Server.MapPath("images/" + photo));
                HiddenField1_photo.Value = "images/" + photo;
                SqlDataSource2_btninsert.Insert();
                lblmessage.Text = "Product added!";
            }
        }

        protected void Ddlbrand_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void ddlprimaterial_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddlcatname_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}