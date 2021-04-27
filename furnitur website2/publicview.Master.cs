using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace furnitur_website2
{
    public partial class publicview : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["cartlistsession"]!=null)
            {
                List<Cart> cartlist = (List<Cart>)Session["cartlistsession"];
                Lblcount.Text = cartlist.Count.ToString();
            }
        }
    }
}