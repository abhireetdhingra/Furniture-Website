<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Addprimarymaterial.aspx.cs" Inherits="furnitur_website2.Addprimarymaterial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center font-weight-bold">Add Primary Material</h1>
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
                                <label>Primary Material </label>
                               
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="TBmaterial" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This is required" ControlToValidate="TBmaterial" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
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
                                <asp:Button ID="btncatadd" runat="server" Text="Add material" CssClass="btn-block btn-success btn-lg" OnClick="btncatadd_Click" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Label ID="Lblmessage" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" DeleteCommand="DELETE FROM [PrimaryMaterial] WHERE [maincategory] = @maincategory AND [primarymaterial] = @primarymaterial" InsertCommand="INSERT INTO [PrimaryMaterial] ([maincategory], [primarymaterial]) VALUES (@maincategory, @primarymaterial)" SelectCommand="SELECT * FROM [PrimaryMaterial]">
                        <DeleteParameters>
                            <asp:Parameter Name="maincategory" Type="String" />
                            <asp:Parameter Name="primarymaterial" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Ddlcategory" Name="maincategory" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="TBmaterial" Name="primarymaterial" PropertyName="Text" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    </div>
                

                </div>
            </div>
        </div>
</asp:Content>
