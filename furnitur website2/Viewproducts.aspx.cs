﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace furnitur_website2
{
    public partial class Viewproducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rblmaincate_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        }
    }
}