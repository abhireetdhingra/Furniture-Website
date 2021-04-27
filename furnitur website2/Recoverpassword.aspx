<%@ Page Title="" Language="C#" MasterPageFile="~/publicview.Master" AutoEventWireup="true" CodeBehind="Recoverpassword.aspx.cs" Inherits="furnitur_website2.Recoverpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h1 class="text-center font-weight-bold">Recover your Password in few easy steps</h1>
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
                               <label>Email</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="Tbemail" runat="server" CssClass="form-control" OnTextChanged="Tbemail_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This is required" ControlToValidate="Tbemail" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>

                        </div>
                         <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-6">
                               <label>Security Question</label>
                            </div>
                            <div class="col-md-6">
                               <asp:DropDownList ID="Ddlquestion" runat="server">
                                        <asp:ListItem>Whats your first pet name?</asp:ListItem>
                                        <asp:ListItem>Your favourite color?</asp:ListItem>
                                        <asp:ListItem>your First Crush?</asp:ListItem>
                                    </asp:DropDownList>
                            </div>

                        </div>
                         <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-6">
                               <label>Answer</label>
                            </div>
                            <div class="col-md-6">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This is required" ControlToValidate="Tbanswer" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="Tbanswer" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                        </div>
                         <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-12">
                               <asp:Button ID="Btnrecover" runat="server" Text="Recover" CssClass="btn-primary btn-lg btn-block" OnClick="Btnrecover_Click" />
                            </div>
                        </div>
                        

                        </div>
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
                            <asp:ControlParameter ControlID="HiddenFieldpass" Name="password" PropertyName="Value" />
                            <asp:ControlParameter ControlID="Tbemail" Name="emailid" PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:HiddenField ID="HiddenFieldpass" runat="server" />
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
