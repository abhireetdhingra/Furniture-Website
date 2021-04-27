<%@ Page Title="" Language="C#" MasterPageFile="~/publicview.Master" AutoEventWireup="true" CodeBehind="Homepage(public).aspx.cs" Inherits="furnitur_website2.Viewproducts_public_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .fakeimg {
            height: 200px;
            background: #aaa;
        }
         .carousel-inner img {
            width: 100%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">

                <h5>UPTO 50% DISCOUNT*</h5>
                <div id="demo" class="carousel slide" data-ride="carousel">
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                    </ul>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="images/fashion_sofa_hd_picture_167714.jpg"width="500" height="500" />
                            <div class="carousel-caption">
                                <h3>DIWALI DISCOUNT !!</h3>
                                <p>UPTO 50%OFF*</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="images/sofa%202.jpg" width="500" height="500" />
                            <div class="carousel-caption">
                                <h3>CONTEMPORARY SOFA</h3>
                                <p>FLAT 20%!! HURRY BUY NOW!!</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="images/sofa.jpg" alt="aristocratic sofa" width="500" height="500" />
                            <div class="carousel-caption">
                                <h3>ARISTROCRATIC SOFA </h3>
                                <p>FLAT 30% !!!</p>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>
                <p></p>
                <p>
                    This diwali fill your home with happines by trying out our products that are durable and comfortable .let your home express you inner self .Get discounts never seen before !!!

                </p>
                <br />

            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:RadioButtonList ID="Rblmaincategory" runat="server" AutoPostBack="True" Font-Bold="False" ForeColor="#666666" OnSelectedIndexChanged="Rblmaincategory_SelectedIndexChanged" RepeatDirection="Horizontal">
                    <asp:ListItem>None</asp:ListItem>
                    <asp:ListItem>Chairs</asp:ListItem>
                    <asp:ListItem>Tables</asp:ListItem>
                    <asp:ListItem>Sofa</asp:ListItem>
                    <asp:ListItem>Beds</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-md-6">
                <label>Brands</label>
                <asp:DropDownList ID="Ddlbrands" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcecategory" DataTextField="brand" DataValueField="brand" OnSelectedIndexChanged="Ddlbrands_SelectedIndexChanged">
                    <asp:ListItem>--SelectBrand--</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:DataList ID="DataListviewproducts" runat="server" CssClass="table table-borderd" DataKeyField="productid" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal">


                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" CssClass="text-decoration-none" NavigateUrl='<%# "singleproductdetail.aspx?pid="+Eval("productid") %>' runat="server">
                            <asp:Image ID="Image1" runat="server" BorderStyle="Solid" BorderWidth="1px" CssClass=" img-thumbnail img-fluid" Height="185px" ImageUrl='<%# Eval("picture") %>' Width="280px" />
                            <br />
                            &nbsp;<asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' ForeColor="Aqua" Font-Bold="True" Font-Size="Large" />
                            <asp:Label ID="brandLabel" runat="server" Text='<%# "by"+ Eval("brand") %>' Font-Bold="False" Font-Names="MV Boli" ForeColor="Silver" Font-Size="Medium" />
                            <br />
                            <asp:Label ID="priceLabel" runat="server" Text='<%# "₹"+ Eval("price") %>' Font-Bold="True" Font-Size="Large" />&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="netpriceLabel" runat="server" Font-Italic="True" Font-Strikeout="True" Text='<%# "₹"+Eval("netprice") %>' Font-Size="Small" ForeColor="Gray" />&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="discountLabel" runat="server" Text='<%# Eval("discount")+"%" %>' ForeColor="#FF3300" />
                            <br />
                            &nbsp;<br />
                            <br />
                            <br />
                        </asp:HyperLink>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [products] WHERE ([status] = @status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label><asp:SqlDataSource ID="SqlDataSourcecategory" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [products] WHERE (([status] = @status) AND ([maincategory] = @maincategory))">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="status" Type="String" />
            <asp:ControlParameter ControlID="Rblmaincategory" Name="maincategory" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourcebrands" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [products] WHERE (([status] = @status) AND ([brand] = @brand))">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="status" Type="String" />
            <asp:ControlParameter ControlID="Ddlbrands" Name="brand" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
