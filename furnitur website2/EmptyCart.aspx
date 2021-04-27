<%@ Page Title="" Language="C#" MasterPageFile="~/publicview.Master" AutoEventWireup="true" CodeBehind="EmptyCart.aspx.cs" Inherits="furnitur_website2.EmptyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">

                            </div>
                        </div>
                         <div class="row">
                            <div class="col">

                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <center>
                                    <asp:Image ID="Imgemptycart" CssClass="img-thumbnail img-fluid " runat="server" ImageUrl="images/bag-icon%20(1).png" />
                                </center>
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                               <div class="text-center font-weight-bold">Hey! Your Bag Feels Empty</div>
                               <div class="text-muted text-center">Lets add some items in your bag..</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
