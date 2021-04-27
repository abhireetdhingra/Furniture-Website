<%@ Page Title="" Language="C#" MasterPageFile="~/publicview.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="furnitur_website2.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center display-4"> Admin</h1>
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
                               <div class="col">
                                   <label>Enter admin uniqueid</label>
                                   <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Tbadminlogin" ErrorMessage="This feild is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        <asp:TextBox CssClass="form-control" ID="Tbadminlogin" runat="server" placeholder="Username"></asp:TextBox>
                                   </div>

                                   <label>Enter password</label>
                                   <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbadminpassword" ErrorMessage="This feild is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        <asp:TextBox CssClass="form-control" ID="tbadminpassword" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                                   </div>

                                   <div class="form-group">
                                       <asp:Button ID="Btnlogin" runat="server" Text="login" CssClass="btn-success btn-block" OnClick="Button2_Click" />
                                       <asp:Label ID="Lblmessage" runat="server" CssClass="font-weight-bolder"></asp:Label>
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [admin]"></asp:SqlDataSource>
                                   </div>

                               </div>
                           </div>
                               
                   </div>
               </div>
           </div>
       </div>
   </div>
</asp:Content>
