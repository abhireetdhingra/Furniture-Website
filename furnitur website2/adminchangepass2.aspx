<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminchangepass2.aspx.cs" Inherits="furnitur_website2.adminchangepass2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Change password</h1>
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <img style="position: relative; right: -86px; top: -22px; height: 128px;"
                                    src="images/user-login-icon-14.png" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 ">
                                <label>Old Password</label>
                            </div>
                            <div class="col-md-6  ">
                                <asp:TextBox ID="TBoldpass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Feild is required" ControlToValidate="TBoldpass" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 ">
                                <label>New Password</label>
                            </div>
                            <div class="col-md-6  ">
                                <asp:TextBox ID="TBnewpass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This feild is required" ControlToValidate="TBnewpass" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 ">
                                <label>Confirm Password</label>
                            </div>
                            <div class="col-md-6  ">
                                <asp:TextBox ID="TBcnpass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This feild is required" ControlToValidate="TBcnpass" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords wont match!" ControlToCompare="TBnewpass" ControlToValidate="TBcnpass" SetFocusOnError="True"></asp:CompareValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 ">
                                <asp:Button ID="Btnchangepass" runat="server" Text="Update" CssClass="btn-lg btn-success btn-block" OnClick="Btnchangepass_Click" />
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-12 ">
                                <asp:Label ID="Lblmsg" runat="server" Text=""></asp:Label>
                            </div>

                        </div>
                    </div>
                    </div>
                </div>
            </div>
        <div>
            

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" DeleteCommand="DELETE FROM [admin] WHERE [username] = @username" InsertCommand="INSERT INTO [admin] ([username], [password]) VALUES (@username, @password)" SelectCommand="SELECT * FROM [admin]" UpdateCommand="UPDATE [admin] SET [password] = @password WHERE [username] = @username">
                <DeleteParameters>
                    <asp:Parameter Name="username" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TBcnpass" Name="password" PropertyName="Text" Type="String" />
                    <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        </div>
    
   
</asp:Content>
