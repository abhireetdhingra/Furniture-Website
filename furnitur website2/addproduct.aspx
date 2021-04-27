<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="furnitur_website2.addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center display-1">Add products</h1>
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
                            <div class="col-6">
                                <label>Main category</label>
                            </div>
                            <div class="col-6">
                                <asp:RadioButtonList runat="server" ID="rbmaincate" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="rbmaincate_SelectedIndexChanged">
                                    <asp:ListItem>tables</asp:ListItem>
                                    <asp:ListItem>sofa</asp:ListItem>
                                    <asp:ListItem>chairs</asp:ListItem>
                                    <asp:ListItem>Beds</asp:ListItem>
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
                                <asp:DropDownList runat="server" ID="ddlcatname" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="categoryname" DataValueField="categoryname" OnSelectedIndexChanged="ddlcatname_SelectedIndexChanged"></asp:DropDownList>
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
                                <asp:DropDownList runat="server" ID="Ddlbrand" CssClass="form-control" DataSourceID="SqlDataSourcebrand" DataTextField="brandname" DataValueField="brandname" OnSelectedIndexChanged="Ddlbrand_SelectedIndexChanged">
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
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>35</asp:ListItem>
                                    <asp:ListItem>40</asp:ListItem>
                                    <asp:ListItem>45</asp:ListItem>
                                    <asp:ListItem>50</asp:ListItem>
                                    <asp:ListItem>55</asp:ListItem>
                                    <asp:ListItem>60</asp:ListItem>
                                    <asp:ListItem>65</asp:ListItem>
                                    <asp:ListItem>70</asp:ListItem>
                                    <asp:ListItem>75</asp:ListItem>
                                    <asp:ListItem>80</asp:ListItem>
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
                            <div class="col-md-12">
                                <asp:Button runat="server" Text="Add" CssClass="btn-success btn-block btn-lg" ID="btnaddproduct" OnClick="btnaddproduct_Click" />
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
         <asp:SqlDataSource ID="SqlDataSource2_btninsert" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" DeleteCommand="DELETE FROM [products] WHERE [productid] = @productid" InsertCommand="INSERT INTO [products] ([productname], [description], [brand], [price], [primarymaterial], [discount], [netprice], [status], [picture], [maincategory], [categoryname]) VALUES (@productname, @description, @brand, @price, @primarymaterial, @discount, @netprice, @status, @picture, @maincategory, @categoryname)" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [productname] = @productname, [description] = @description, [brand] = @brand, [price] = @price, [primarymaterial] = @primarymaterial, [discount] = @discount, [netprice] = @netprice, [status] = @status, [picture] = @picture, [maincategory] = @maincategory, [categoryname] = @categoryname WHERE [productid] = @productid">
             <DeleteParameters>
                 <asp:Parameter Name="productid" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:ControlParameter ControlID="ttbname" Name="productname" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="tbdescription" Name="description" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="Ddlbrand" Name="brand" PropertyName="SelectedValue" Type="String" />
                 <asp:ControlParameter ControlID="tbprice" Name="price" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="ddlprimaterial" Name="primarymaterial" PropertyName="SelectedValue" Type="String" />
                 <asp:ControlParameter ControlID="HiddenField1_discount" Name="discount" PropertyName="Value" Type="Int32" />
                 <asp:ControlParameter ControlID="Tbnetprice" Name="netprice" PropertyName="Text" Type="Int32" />
                 <asp:Parameter DefaultValue="true" Name="status" Type="String" />
                 <asp:ControlParameter ControlID="HiddenField1_photo" DefaultValue="" Name="picture" PropertyName="Value" Type="String" />
                 <asp:ControlParameter ControlID="rbmaincate" Name="maincategory" PropertyName="SelectedValue" Type="String" />
                 <asp:ControlParameter ControlID="ddlcatname" Name="categoryname" PropertyName="SelectedValue" Type="String" />
             </InsertParameters>
             <UpdateParameters>
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
                 <asp:Parameter Name="productid" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSourcebrand" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [brands] WHERE ([maincategory] = @maincategory)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="rbmaincate" Name="maincategory" PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSourcematerial" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [PrimaryMaterial] WHERE ([maincategory] = @maincategory)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="rbmaincate" Name="maincategory" PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
        </div>
</asp:Content>
