using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace furnitur_website2
{
    public partial class Edit_updatecustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Tbemail.Text = Session["emailid2"].ToString();
                DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                bool flag = false;
                for(int i=0;i<=dv.Table.Rows.Count-1;i++)
                {
                   if(dv.Table.Rows[i]["emailid"].ToString()==Tbemail.Text)
                    {
                        Tbfirstname.Text = dv.Table.Rows[i]["firstname"].ToString();
                        Tblastname.Text = dv.Table.Rows[i]["lastname"].ToString();
                        Rblgender.SelectedValue = dv.Table.Rows[i]["gender"].ToString();
                        Tbaddress.Text = dv.Table.Rows[i]["address"].ToString();
                        Tbmobile.Text = dv.Table.Rows[i]["mobile"].ToString();
                        HiddenField1photo.Value=dv.Table.Rows[i]["photo"].ToString();
                        Imguser.ImageUrl= dv.Table.Rows[i]["photo"].ToString();
                        Ddlquestion.SelectedValue = dv.Table.Rows[i]["question"].ToString();
                        Tbanswer.Text = dv.Table.Rows[i]["answer"].ToString();

                    }
                }




            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if(fileuploadpicture.HasFile==true)
            {
                string filename = fileuploadpicture.FileName.ToString().ToLower();
                if(filename.EndsWith("jpg")||filename.EndsWith("jpeg")||filename.EndsWith("bmp")||
                    filename.EndsWith("png"))
                {
                    fileuploadpicture.SaveAs(Server.MapPath("images/" + filename));
                    HiddenField1photo.Value = "images/" + filename;
                    SqlDataSource1.Update();
                    Lblmessage.Text = "Profile Updated Successfully";
                }
                else
                {
                    Lblmessage.Text = "Please upload picture in correct format";
                }
            }
            else
            {
                SqlDataSource1.Update();
                Lblmessage.Text = "Profile Updated Successfully";
            }
        }
    }
}