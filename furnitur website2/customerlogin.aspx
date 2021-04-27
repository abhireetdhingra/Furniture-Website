<%@ Page Title="" Language="C#" MasterPageFile="~/publicview.Master" AutoEventWireup="true" CodeBehind="customerlogin.aspx.cs" Inherits="furnitur_website2.customerlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="text-center display-4">Just a step away to place your order!!</h1>
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
                                   <label>Enter Username</label>
                                   <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Tbuserlogin" ErrorMessage="This feild is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        <asp:TextBox CssClass="form-control" ID="Tbuserlogin" runat="server" placeholder="Username"></asp:TextBox>
                                   </div>

                                   <label>Enter password</label>
                                   <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbuserpassword" ErrorMessage="This feild is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        <asp:TextBox CssClass="form-control" ID="tbuserpassword" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                                   </div>
                                   <div class="form-group justify-content-center">
                                       <a href="Recoverpassword.aspx">forgot Password?</a>
                                   </div>
                                   <div class="form-group">
                                       <asp:Button ID="Btnlogin" runat="server" Text="login" CssClass="btn-success btn-block btn-lg" OnClick="Btnlogin_Click" />
                                       <asp:Label ID="Lblmessage" runat="server" CssClass="font-weight-bolder"></asp:Label>
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
                                   </div>
                                   <div class="form-group">
                                       <p>NOT A MEMBER?
                                           <a href="CustomerSignup.aspx">Register Here</a>
                                       </p>
                                   </div>
                                   

                               </div>
                           </div>
                               
                   </div>
               </div>
           </div>
       </div>
   </div>
</asp:Content>
