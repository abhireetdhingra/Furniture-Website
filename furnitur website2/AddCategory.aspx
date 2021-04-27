<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="furnitur_website2.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center font-weight-bold">Add Category</h1>
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <label>Main category</label>
                            </div>
                            <div class="col-6">
                                <asp:DropDownList ID="Ddlcategory" runat="server">
                                    <asp:ListItem>Chairs</asp:ListItem>
                                    <asp:ListItem>Tables</asp:ListItem>
                                    <asp:ListItem>SoFa</asp:ListItem>
                                    <asp:ListItem>Beds</asp:ListItem>
                                    
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <label>Category Name</label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="TBcatname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This is required" ControlToValidate="TBcatname" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Button ID="btncatadd" runat="server" Text="Add category" CssClass="btn-block btn-success btn-lg" OnClick="btncatadd_Click" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Label ID="Lblmessage" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" DeleteCommand="DELETE FROM [category] WHERE [maincategory] = @maincategory AND [categoryname] = @categoryname" InsertCommand="INSERT INTO [category] ([maincategory], [categoryname]) VALUES (@maincategory, @categoryname)" SelectCommand="SELECT * FROM [category]">
                        <DeleteParameters>
                            <asp:Parameter Name="maincategory" Type="String" />
                            <asp:Parameter Name="categoryname" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Ddlcategory" Name="maincategory" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="TBcatname" Name="categoryname" PropertyName="Text" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    </div>
                

                </div>
            </div>
        </div>
</asp:Content>
