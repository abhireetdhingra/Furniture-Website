<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="editprofile.aspx.cs" Inherits="furnitur_website2.Edit_updatecustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id="con">
        <div class="row" id="r">
            <div class="col-md-8 mx-auto" id="col">
                <div class="card">
                    <div class="card-body signup-form">
                        <div class="row">
                            <div class="col-md-12">
                               <h1 class="text-center">Edit Profile</h1>
                            </div>
                             </div>
                        
                         <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                             </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="this is required" ControlToValidate="Tbanswer" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                               <div class="form-group">
                                   <asp:TextBox ID="Tbemail" placeholder="Valid email address" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                               </div>
                            </div>
                             </div>
                             <div class="row">
                            <div class="col-md-6">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This is required" ControlToValidate="Tbfirstname" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Tbfirstname" runat="server"
                                        placeholder="first name" ValidationGroup="reg"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This is required" ControlToValidate="Tblastname" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                              <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Tblastname" runat="server"
                                        placeholder="last name" ValidationGroup="reg"></asp:TextBox>
                                   
                                </div>
                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                             </div>

                              <div class="row">
                            <div class="col-md-6">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This is required" ControlToValidate="Tbmobile" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                               <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Tbmobile" runat="server"
                                        placeholder="10digit mobileno." ValidationGroup="reg" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This is required" ControlToValidate="Rblgender" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                               <div class="form-group">
                                    <asp:RadioButtonList ID="Rblgender" runat="server" RepeatDirection="Horizontal">
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This is required" ControlToValidate="Tbaddress" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <div class="form-group">

                                <asp:TextBox ID="Tbaddress" runat="server" CssClass="form-control" placeholder="Full Address(including state and city)" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                            </div>
                             </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                             </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Image ID="Imguser" Height="100px" Width="100px" runat="server" />
                            </div>
                            
                            <div class="col-md-6">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="This is required" ForeColor="#FF3300" SetFocusOnError="True" ControlToValidate="fileuploadpicture"></asp:RequiredFieldValidator>
                                <br />
                              
                              <div class="form-group">
                                    <asp:FileUpload ID="fileuploadpicture" placeholder="Upload your picture" runat="server" />
                                </div>
                                
                            </div>
                            
                        </div>

                         <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                             </div>
                       
                       
                        <div class="row">
                            <div class="col-md-6">
                              <label>Choose security QUestion</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="Ddlquestion" runat="server">
                                        <asp:ListItem>Whats your first pet name?</asp:ListItem>
                                        <asp:ListItem>Your favourite color?</asp:ListItem>
                                        <asp:ListItem>your First Crush?</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                               <label>Your answer</label>
                                <div class="form-group">
                                    <asp:TextBox ID="Tbanswer" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="This is required" ControlToValidate="Tbanswer" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                
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
                                   <label>I have read all the terms and condition as well as the privacy policy</label>
                                   <asp:CheckBox ID="Chkterms" runat="server"  />
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
                                   <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="btn btn-success btn-block btn-lg" CausesValidation="False" OnClick="btnupdate_Click"  />
                                </div>
                            </div>
                             </div>


                        </div>
                    </div>
                
                </div>
            </div>
        <asp:Label ID="Lblmessage" runat="server" ForeColor="#FF3300"></asp:Label>
        <br />
        <asp:HiddenField ID="HiddenField1photo" runat="server" />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" DeleteCommand="DELETE FROM [customer] WHERE [emailid] = @emailid" InsertCommand="INSERT INTO [customer] ([emailid], [password], [firstname], [lastname], [gender], [address], [mobile], [photo], [question], [answer], [status]) VALUES (@emailid, @password, @firstname, @lastname, @gender, @address, @mobile, @photo, @question, @answer, @status)" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET  [firstname] = @firstname, [lastname] = @lastname, [gender] = @gender, [address] = @address, [mobile] = @mobile, [photo] = @photo, [question] = @question, [answer] = @answer WHERE [emailid] = @emailid">
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
                <asp:ControlParameter ControlID="Tbfirstname" Name="firstname" PropertyName="Text" />
                <asp:ControlParameter ControlID="Tblastname" Name="lastname" PropertyName="Text" />
                <asp:ControlParameter ControlID="Rblgender" Name="gender" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="Tbaddress" Name="address" PropertyName="Text" />
                <asp:ControlParameter ControlID="Tbmobile" Name="mobile" PropertyName="Text" />
                <asp:ControlParameter ControlID="HiddenField1photo" Name="photo" PropertyName="Value" />
                <asp:ControlParameter ControlID="Ddlquestion" Name="question" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="Tbanswer" Name="answer" PropertyName="Text" />
                <asp:ControlParameter ControlID="Tbemail" Name="emailid" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>

        </div>
</asp:Content>
