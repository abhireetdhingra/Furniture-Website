using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace furnitur_website2
{
    public partial class Viewproducts_public_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                DataListviewproducts.DataSource = SqlDataSource1;
                DataListviewproducts.DataBind();
            }
        }

        protected void Rblmaincategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(Rblmaincategory.SelectedIndex==0)//none is selected
            {
                SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                DataListviewproducts.DataSource = SqlDataSource1;
                DataListviewproducts.DataBind();
            }
            else
            {
                SqlDataSourcecategory.Select(DataSourceSelectArguments.Empty);
                DataListviewproducts.DataSource = SqlDataSourcecategory;
                DataListviewproducts.DataBind();
            }
        }

        protected void Ddlbrands_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSourcebrands.Select(DataSourceSelectArguments.Empty);
            DataListviewproducts.DataSource = SqlDataSourcebrands;
            DataListviewproducts.DataBind();
        }
    }
}