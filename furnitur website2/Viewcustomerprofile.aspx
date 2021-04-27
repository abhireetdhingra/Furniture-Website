<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Viewcustomerprofile.aspx.cs" Inherits="furnitur_website2.Viewcustomerprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
            left: 0px;
            top: -402px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container" id="con">
        <div class="row" id="r">
            <div class="col-md-8 mx-auto" id="col">
                <div class="card">
                    <div class="card-body signup-form">
                        <div class="row">
                            <div class="col-md-12">
                               <h1 class="text-center">My Profile</h1>
                            </div>
                             </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Image ID="Imguser" Height="100px" Width="100px" runat="server" />
                            </div>
                        </div>
                        
                         <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                             </div>
                        <div class="row">
                            <div class="col-md-12">
                                 
                               <div class="form-group">
                                   <asp:TextBox ID="Tbemail" placeholder="Valid email address" runat="server" CssClass="form-control" ReadOnly="True" Enabled="False"></asp:TextBox>
                               </div>
                            </div>
                             </div>
                             <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Tbfirstname" runat="server"
                                        placeholder="first name" ValidationGroup="reg" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                              <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Tblastname" runat="server"
                                        placeholder="last name" ValidationGroup="reg" Enabled="False" ReadOnly="True"></asp:TextBox>
                                   
                                </div>
                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="auto-style1">
                                <hr />
                            </div>
                             </div>

                              <div class="row">
                            <div class="col-md-6">
                               <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Tbmobile" runat="server"
                                        placeholder="10digit mobileno." ValidationGroup="reg" TextMode="Number" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                               <div class="form-group">
                                    <asp:RadioButtonList ID="Rblgender" runat="server" RepeatDirection="Horizontal" Enabled="False">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                             </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">

                                <asp:TextBox ID="Tbaddress" runat="server" CssClass="form-control" placeholder="Full Address(including state and city)" TextMode="MultiLine" Enabled="False" ReadOnly="True"></asp:TextBox>
                                    </div>
                            </div>
                             </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                             </div>                                                                                                                                                                                 
                        </div>
                    </div>
                
                </div>
            </div>
        <asp:Label ID="Lblmessage" runat="server" ForeColor="#FF3300"></asp:Label>
        <br />
        <asp:HiddenField ID="HiddenField1photo" runat="server" />

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [customer] WHERE ([emailid] = @emailid)">
              <SelectParameters>
                  <asp:SessionParameter Name="emailid" SessionField="emailid2" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>

        </div>
</asp:Content>
