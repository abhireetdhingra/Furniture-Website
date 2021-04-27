<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Sofa(public).aspx.cs" Inherits="furnitur_website2.Sofa_public_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <asp:DataList runat="server" CssClass="table table-bordered" DataKeyField="productid" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal">
                    <ItemTemplate>
                     <asp:HyperLink runat="server" CssClass="text-decoration-none" NavigateUrl='<%# "singleproductdetail.aspx?pid="+Eval("productid") %>'>
                        <asp:Image ID="Image1" runat="server" Height="204px" Width="326px" ImageUrl='<%# Eval("picture") %>' CssClass="img-thumbnail img-fluid" />
                        <br />
                        &nbsp;<asp:Label ID="productnameLabel" runat="server" ForeColor="aqua" Font-Bold="True" Font-Size="Large" Text='<%# Eval("productname") %>' />
                        <br />
                        &nbsp;<asp:Label ID="brandLabel" Font-Bold="False" Font-Names="MV Boli" ForeColor="Silver" Font-Size="Medium" runat="server" Text='<%# "by"+ Eval("brand") %>' />
                        <br />
                        &nbsp;<asp:Label ID="priceLabel" runat="server" Text='<%# "₹"+ Eval("price") %>' Font-Bold="True" Font-Size="Large" />
                        <asp:Label ID="netpriceLabel" runat="server" Font-Italic="True" Font-Strikeout="True" Font-Size="Small" ForeColor="Gray" Text='<%# "₹"+Eval("netprice") %>' />
                        <asp:Label ID="discountLabel" runat="server" Text='<%# Eval("discount")+"%" %>' ForeColor="#FF3300" />
                        <br />
                        <br />
                        &nbsp;<br /> &nbsp;<br />
                        <br />
                        <br />
                         </asp:HyperLink>
                    </ItemTemplate>
                </asp:DataList>
                
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [products] WHERE ([maincategory] = @maincategory)">
            <SelectParameters>
                <asp:Parameter DefaultValue="sofa" Name="maincategory" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
