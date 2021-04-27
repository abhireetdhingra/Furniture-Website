using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace furnitur_website2
{
    public partial class viewcart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cartlistsession"] == null)
            {
                Response.Redirect("EmptyCart.aspx");
            }
            gettotal();
        }
        private void gettotal()
        {
            if (Session["cartlistsession"] != null)
            {
                List<Cart> cartlist = (List<Cart>)Session["cartlistsession"];
                int grandtotal = 0;
                foreach (Cart obj in cartlist)
                {
                    grandtotal += obj.Amount;
                }
                lbltotal.Text = grandtotal.ToString();
            }
        }
        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            string pid = e.CommandArgument.ToString();
            List<Cart> cartlist = (List<Cart>)Session["cartlistsession"];
            int index = -1;
            for (int i = 0; i <= cartlist.Count - 1; i++)
            {
                index++;
                if (cartlist[i].prodid == pid)
                {
                    break;
                }

            }

            if (index >= 0)
            {
                cartlist.RemoveAt(index);
            }
            Session["cartlistsession"] = cartlist;

            GridView1.DataBind();
            gettotal();
        }
        protected void btnplaceorder_Click(object sender, EventArgs e)
        {

            Session["totalamount"] = lbltotal.Text;
            if (Session["emailid2"] != null) //customer already logged in
            {
                Response.Redirect("PlaceOrder.aspx");
            }
            else
            {
                Response.Redirect("customerlogin.aspx");
            }
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            string pid = e.CommandArgument.ToString();
            int index = -1;
            List<Cart> cartlist = (List<Cart>)Session["cartlistsession"];
            for(int i=0;i<=cartlist.Count-1;i++)
            {
                index++;
                if(cartlist[i].prodid==pid)
                {
                    break;
                }
            }
            if(index>=0)
            {
                cartlist.RemoveAt(index);
            }
            Session["cartlistsession"] = cartlist;
            GridView1.DataBind();
            gettotal();
        }

       
    }
}