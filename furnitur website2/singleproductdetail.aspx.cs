using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace furnitur_website2
{
    public partial class singleproductdetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count == 0)
                Response.Redirect("Homepage(public).aspx");

            if (Page.IsPostBack == false)
            {


                DataView dv = (DataView)SqlDataSOurce1.Select(DataSourceSelectArguments.Empty);
                if (dv.Table.Rows.Count > 0)
                {
                    lblName.Text = dv.Table.Rows[0]["productname"].ToString();
                    lblBrand.Text = dv.Table.Rows[0]["brand"].ToString();
                    lblprimaterial.Text = dv.Table.Rows[0]["primarymaterial"].ToString();
                    lblprice.Text = dv.Table.Rows[0]["price"].ToString();
                    lbldiscount.Text = dv.Table.Rows[0]["discount"].ToString();
                    lblnetprice.Text = dv.Table.Rows[0]["netprice"].ToString();
                    lbldesc.Text = dv.Table.Rows[0]["description"].ToString();
                    Image1.ImageUrl = dv.Table.Rows[0]["picture"].ToString();

                }
            }
        }

        protected void Btncart_Click(object sender, EventArgs e)
        {
            //check for quantity
            if(ddllist.SelectedItem.Text=="0")
            {
                Lblmsg.Text = "Please select the quantity";
            }
            Cart obj = new Cart();
            obj.prodid = Request.QueryString["pid"];
            obj.prodname = lblName.Text;
            obj.brand = lblBrand.Text;
            obj.Primarymaterial = lblprimaterial.Text;
            obj.netprice = Convert.ToInt32(lblnetprice.Text);
            obj.price = Convert.ToInt32(lblprice.Text);
            obj.discount = Convert.ToInt32(lblprice.Text) - Convert.ToInt32(lblnetprice.Text);
            obj.quantity = Convert.ToInt32(ddllist.SelectedItem.Text.ToString());
            obj.Amount = Convert.ToInt32(ddllist.SelectedItem.Text) * Convert.ToInt32(lblnetprice.Text);

            List<Cart> cartlist = null;        
            if(Session["cartlistsession"]==null) //new product
            {
                cartlist = new List<Cart>();
            }            
            else// exsisting product add in the cart
            {
                cartlist = (List<Cart>)Session["cartlistsession"];
            }
            // check for duplicate product in cart
            bool flag = false;
            foreach(Cart c in cartlist)
            {
                if(c.prodid==obj.prodid)
                {
                    flag = true;
                    break;
                }
            }
            if (flag == true)
            {
                Lblmsg.Text = "Product already added in the cart!";
            }
            else
            {
                cartlist.Add(obj);
                Session["cartlistsession"] = cartlist;
                
               // Response.Redirect("singleproductdetail.aspx?pid=" + Request.QueryString["pid"]);
                Lblmsg.Text = "Product added ";
            }



        }
    }
}
