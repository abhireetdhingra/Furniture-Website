<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Edit-deleteproducts.aspx.cs" Inherits="furnitur_website2.Edit_deleteproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function validate
    {
            return confirm("Are you sure!.Product once deleted will not be restored.");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="text-center display-1">Edit/delete products</h1>
     <div class="container">       
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-6">
                                <label>Product ID</label>
                            </div>
                             <div class="col-md-6">
                                 <asp:TextBox ID="Tbproid" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                             </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <label>Main category</label>
                            </div>
                            <div class="col-6">
                                <asp:RadioButtonList runat="server" ID="rbmaincate" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="rbmaincate_SelectedIndexChanged">
                                    <asp:ListItem>tables</asp:ListItem>
                                    <asp:ListItem>sofa</asp:ListItem>
                                    <asp:ListItem>chairs</asp:ListItem>
                                </asp:RadioButtonList>
                               
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">                              
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <label>Category Name</label>
                            </div>
                            <div class="col-6">
                                <asp:DropDownList runat="server" ID="ddlcatname" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="categoryname" DataValueField="categoryname"></asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="This feild is required" ControlToValidate="ddlcatname" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />                                
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-6">
                                <label>Product Name</label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox runat="server" ID="ttbname" CssClass="form-control" ></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="This feild is required" ControlToValidate="ttbname" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />                                
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-6">
                                <label>Product Description</label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox runat="server" ID="tbdescription" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="This feild is required" ControlToValidate="tbdescription" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />                                
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-6">
                                <label>Brand</label>
                            </div>
                            <div class="col-6">
                                <asp:DropDownList runat="server" ID="Ddlbrand" CssClass="form-control" DataSourceID="SqlDataSourcebrand" DataTextField="brandname" DataValueField="brandname">
                                    <asp:ListItem Selected="True">WoodsWorth</asp:ListItem>
                                    <asp:ListItem>CasaCraft</asp:ListItem>
                                    <asp:ListItem>FurniTech</asp:ListItem>
                                    <asp:ListItem>UrbanLiving</asp:ListItem>
                                    <asp:ListItem>SolaceCraft</asp:ListItem>
                                    <asp:ListItem>Mudramark</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="This feild is required" ControlToValidate="Ddlbrand" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />                                
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-6">
                                <label>Price</label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox runat="server" ID="tbprice" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="This feild is required" ControlToValidate="tbprice" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />                                
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-6">
                                <label>Discount</label>
                            </div>
                            <div class="col-6">
                                <asp:DropDownList runat="server" ID="ddldiscount" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddldiscount_SelectedIndexChanged">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>40</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="This feild is required" ControlToValidate="ddldiscount" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />                                
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-6">
                                <label>Net Price</label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox runat="server" ID="Tbnetprice" TextMode="Number" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="This feild is required" ControlToValidate="Tbnetprice" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />                                
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-6">
                                <label>Picture</label>
                            </div>
                            <div class="col-6">
                                <asp:Image ID="Imgprod" runat="server" Height="72px" Width="87px" />
                                <asp:FileUpload runat="server" ID="fileuploadpicture" CssClass="form-control"></asp:FileUpload>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="This feild is required" ControlToValidate="fileuploadpicture" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />                                
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-6">
                                <label>Primary Material </label>
                            </div>
                            <div class="col-6">
                                <asp:DropDownList runat="server" ID="ddlprimaterial" CssClass="form-control" DataSourceID="SqlDataSourcematerial" DataTextField="primarymaterial" DataValueField="primarymaterial" OnSelectedIndexChanged="ddlprimaterial_SelectedIndexChanged">
                                    <asp:ListItem Selected="True">Fabric</asp:ListItem>
                                    <asp:ListItem>Leatherette</asp:ListItem>
                                    <asp:ListItem Value="Sheesham Wood">Sheesham Wood</asp:ListItem>
                                    <asp:ListItem>Pine wood</asp:ListItem>
                                    <asp:ListItem>Rubber Wood</asp:ListItem>
                                    <asp:ListItem>Teak Wood</asp:ListItem>
                                    <asp:ListItem>Mahogany Wood</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="This feild is required" ControlToValidate="ddlprimaterial" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                  <label>Status</label>                    
                            </div>
                             <div class="col-md-6">
                                 <asp:RadioButtonList ID="rblstatus" runat="server" RepeatDirection="Horizontal">
                                     <asp:ListItem>true</asp:ListItem>
                                     <asp:ListItem>false</asp:ListItem>
                                 </asp:RadioButtonList>              
                            </div>
                        </div>
       
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Button ID="Btnupdate" runat="server" Text="update" CssClass="btn btn-success btn-block btn-lg" CausesValidation="False" OnClick="Btnupdate_Click" />
                            </div>
                            <div class="col-md-6">
                                <asp:Button ID="Btndel" runat="server" Text="Delete" CssClass="btn btn-danger btn-lg btn-block"
                                    OnClientClick="return validate()" 
                                    OnClick="Btndel_Click" CausesValidation="False" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Label runat="server" ID="lblmessage" CssClass="text-danger"></asp:Label>
                            </div>
                        </div>
                        </div>
                   
                    </div>
                

                </div>
            </div>
         <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT [categoryname] FROM [category] WHERE ([maincategory] = @maincategory)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="rbmaincate" Name="maincategory" PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         <asp:HiddenField ID="HiddenField1_photo" runat="server" />
         <asp:HiddenField ID="HiddenField1_discount" runat="server" />
         <asp:SqlDataSource ID="SqlDataSource2edit" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" DeleteCommand="DELETE FROM [products] WHERE [productid] = @productid" InsertCommand="INSERT INTO [products] ([productname], [description], [brand], [price], [primarymaterial], [discount], [netprice], [status], [picture], [maincategory], [categoryname]) VALUES (@productname, @description, @brand, @price, @primarymaterial, @discount, @netprice, @status, @picture, @maincategory, @categoryname)" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [productname] = @productname, [description] = @description, [brand] = @brand, [price] = @price, [primarymaterial] = @primarymaterial, [discount] = @discount, [netprice] = @netprice, [status] = @status, [picture] = @picture, [maincategory] = @maincategory, [categoryname] = @categoryname WHERE [productid] = @productid">
             <DeleteParameters>
                 <asp:ControlParameter ControlID="Tbproid" Name="productid" PropertyName="Text" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="productname" Type="String" />
                 <asp:Parameter Name="description" Type="String" />
                 <asp:Parameter Name="brand" Type="String" />
                 <asp:Parameter Name="price" Type="Int32" />
                 <asp:Parameter Name="primarymaterial" Type="String" />
                 <asp:Parameter Name="discount" Type="Int32" />
                 <asp:Parameter Name="netprice" Type="Int32" />
                 <asp:Parameter Name="status" Type="String" />
                 <asp:Parameter Name="picture" Type="String" />
                 <asp:Parameter Name="maincategory" Type="String" />
                 <asp:Parameter Name="categoryname" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:ControlParameter ControlID="ttbname" Name="productname" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="tbdescription" Name="description" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="Ddlbrand" Name="brand" PropertyName="SelectedValue" Type="String" />
                 <asp:ControlParameter ControlID="tbprice" Name="price" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="ddlprimaterial" Name="primarymaterial" PropertyName="SelectedValue" Type="String" />
                 <asp:ControlParameter ControlID="HiddenField1_discount" Name="discount" PropertyName="Value" Type="Int32" />
                 <asp:ControlParameter ControlID="Tbnetprice" Name="netprice" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="rblstatus" Name="status" PropertyName="SelectedValue" Type="String" />
                 <asp:ControlParameter ControlID="HiddenField1_photo" Name="picture" PropertyName="Value" Type="String" />
                 <asp:ControlParameter ControlID="rbmaincate" Name="maincategory" PropertyName="SelectedValue" Type="String" />
                 <asp:ControlParameter ControlID="ddlcatname" Name="categoryname" PropertyName="SelectedValue" Type="String" />
                 <asp:ControlParameter ControlID="ttbname" Name="productid" PropertyName="Text" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSourcebrand" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [brands] WHERE ([maincategory] = @maincategory)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="rbmaincate" Name="maincategory" PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         <br />
         <asp:SqlDataSource ID="SqlDataSourcematerial" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [PrimaryMaterial] WHERE ([maincategory] = @maincategory)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="rbmaincate" Name="maincategory" PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
        </div>
</asp:Content>
