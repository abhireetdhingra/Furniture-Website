using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace furnitur_website2
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbamount.Text = Session["totalamount"].ToString();
            tbaddress.Text = Session["address"].ToString();

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {           
            HiddenField1datetime.Value = DateTime.Now.ToString();
            SqlDataSourceorders.Insert();
            List<Cart> cartlist = (List<Cart>)Session["cartlistsession"];
            foreach(Cart obj in cartlist)
            {
                HiddenFieldname.Value=obj.prodname;
                HiddenFieldbrand.Value= obj.brand;
                HiddenFieldprodid.Value=obj.prodid;
                HiddenFieldnetprice.Value=obj.netprice.ToString();
                HiddenFieldprice.Value = obj.price.ToString();
                HiddenFielddiscount.Value = obj.discount.ToString();
                HiddenFieldquantity.Value = obj.quantity.ToString();
                HiddenFieldamt.Value = obj.Amount.ToString();
                HiddenFieldphoto.Value = obj.photo;
                SqlDataSource1details.Insert();
            }
            Response.Redirect("Orderplaced.aspx");
        }

        protected void SqlDataSourceorders_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            HiddenFieldorderid.Value=e.Command.Parameters["@orderid"].Value.ToString();
        }
    }
}