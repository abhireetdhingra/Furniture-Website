<%@ Page Title="" Language="C#" MasterPageFile="~/publicview.Master" AutoEventWireup="true" CodeBehind="CustomerSignup.aspx.cs" Inherits="furnitur_website2.CustomerSignup1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        p {
            color: #999;
            margin-bottom: 30px;
            text-align: center;
        }
        .signup-form h2 {
            color: #636363;
            margin: 0 0 15px;
            position: relative;
            text-align: center;
        }

            .signup-form h2:before, .signup-form h2:after {
                content: "";
                height: 2px;
                width: 30%;
                background: #d4d4d4;
                position: absolute;
                top: 50%;
                z-index: 2;
            }

            .signup-form h2:before {
                left: 0;
            }

            .signup-form h2:after {
                right: 0;
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
                            <div class="col">
                                <h3 class="text-center">Register</h3>
                                <p>Create your account. It's free and only takes a minute.</p>
                            </div>
                            </div>
                        
                         <div class="row">
                            <div class="col-md-12">
                                <hr />
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This is required" ControlToValidate="Tbemail" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                
                               <div class="form-group">
                                    <asp:TextBox ID="Tbemail" placeholder="Valid Email Address" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                                </div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid email" ControlToValidate="Tbemail" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This is required" ControlToValidate="Tbpass" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                
                               <div class="form-group">
                                    <asp:TextBox ID="Tbpass" TextMode="Password" placeholder="Enter password" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="This is required" ControlToValidate="Tbcnpass" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                               <div class="form-group">
                                    <asp:TextBox ID="Tbcnpass" TextMode="Password" placeholder="Confirm Password" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="passwords not match" ControlToCompare="Tbpass" ControlToValidate="Tbcnpass" ForeColor="#FF3300" SetFocusOnError="True"></asp:CompareValidator>
                                
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
                                   <asp:Button ID="btnregister" runat="server" Text="Button" CssClass="btn btn-success btn-block btn-lg" OnClick="btnregister_Click" />
                                </div>
                            </div>
                             </div>


                        </div>
                    </div>
                <div>
                    <div class="text-center">Already have an account? <a href="#">Sign in</a></div>
                </div>
                </div>
            </div>
        <asp:Label ID="Lblmessage" runat="server" ForeColor="#FF3300"></asp:Label>
        <br />
        <asp:HiddenField ID="HiddenField1photo" runat="server" />

        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" DeleteCommand="DELETE FROM [customer] WHERE [emailid] = @emailid" InsertCommand="INSERT INTO [customer] ([emailid], [password], [firstname], [lastname], [gender], [address], [mobile], [photo], [question], [answer], [status]) VALUES (@emailid, @password, @firstname, @lastname, @gender, @address, @mobile, @photo, @question, @answer, @status)" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET [password] = @password, [firstname] = @firstname, [lastname] = @lastname, [gender] = @gender, [address] = @address, [mobile] = @mobile, [photo] = @photo, [question] = @question, [answer] = @answer, [status] = @status WHERE [emailid] = @emailid">
        <DeleteParameters>
            <asp:Parameter Name="emailid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="Tbemail" Name="emailid" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Tbpass" Name="password" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Tbfirstname" Name="firstname" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Tblastname" Name="lastname" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Rblgender" Name="gender" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="Tbaddress" Name="address" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Tbmobile" Name="mobile" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="HiddenField1photo" Name="photo" PropertyName="Value" Type="String" />
            <asp:ControlParameter ControlID="Ddlquestion" Name="question" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="Tbanswer" Name="answer" PropertyName="Text" Type="String" />
            <asp:Parameter DefaultValue="active" Name="status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
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
            <asp:Parameter Name="emailid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
