<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="customerchangepassword.aspx.cs" Inherits="furnitur_website2.customerchangepassword" %>
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
                                <asp:Button ID="Btnchangepass" runat="server" Text="Update" CssClass="btn-lg btn-success btn-block" OnClick="Btnchangepass_Click"  />
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-12 ">
                                <asp:Label ID="Lblmsg" runat="server" Text=""></asp:Label>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" DeleteCommand="DELETE FROM [customer] WHERE [emailid] = @emailid" InsertCommand="INSERT INTO [customer] ([emailid], [password], [firstname], [lastname], [gender], [address], [mobile], [photo], [question], [answer], [status]) VALUES (@emailid, @password, @firstname, @lastname, @gender, @address, @mobile, @photo, @question, @answer, @status)" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET [password] = @password WHERE [emailid] = @emailid">
                                    <DeleteParameters>
                                        <asp:Parameter Name="emailid" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="emailid" Type="String" />
                                        <asp:Parameter Name="password" Type="String" />
                                        <asp:Parameter Name="firstname" Type="String" />
                                        <asp:Parameter Name="lastname" Type="String" />
                                        <asp:Parameter Name="gender" Type="String" />
                                        <asp:Parameter Name="address" Type="String" />
                                        <asp:Parameter Name="mobile" Type="String" />
                                        <asp:Parameter Name="photo" Type="String" />
                                        <asp:Parameter Name="question" Type="String" />
                                        <asp:Parameter Name="answer" Type="String" />
                                        <asp:Parameter Name="status" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:ControlParameter ControlID="TBnewpass" Name="password" PropertyName="Text" Type="String" />
                                        <asp:SessionParameter Name="emailid" SessionField="emailid2" Type="String" />
                                        <asp:Parameter Name="firstname" />
                                        <asp:Parameter Name="lastname" />
                                        <asp:Parameter Name="gender" />
                                        <asp:Parameter Name="address" />
                                        <asp:Parameter Name="mobile" />
                                        <asp:Parameter Name="photo" />
                                        <asp:Parameter Name="question" />
                                        <asp:Parameter Name="answer" />
                                        <asp:Parameter Name="status" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>

                        </div>
                    </div>
                    </div>
                </div>
            </div>
       
        </div>
    
   
</asp:Content>

    

