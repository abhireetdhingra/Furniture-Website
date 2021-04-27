<%@ Page Title="" Language="C#" MasterPageFile="~/publicview.Master" AutoEventWireup="true" CodeBehind="Tables(public).aspx.cs" Inherits="furnitur_website2.Tables_public_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <asp:DataList ID="DataList1" runat="server" CssClass="table table-bordered" DataKeyField="productid" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-decoration-none"  NavigateUrl='<%# "singleproductdetail.aspx?pid="+Eval("productid")%>' >
                        <asp:Image ID="Image1" runat="server" Height="137px" Width="304px" CssClass="img-fluid img-thumbnail" ImageUrl='<%# Eval("picture") %>' />
                        <br />
                        &nbsp;<asp:Label ID="productnameLabel" ForeColor="aqua" Font-Bold="True" Font-Size="Large" runat="server" Text='<%# Eval("productname") %>' />
                        <br />
                        &nbsp;<asp:Label ID="brandLabel" Font-Bold="False" Font-Names="MV Boli" ForeColor="Silver" Font-Size="Medium" runat="server" Text='<%# "by"+ Eval("brand") %>' />
                        <br />
                        <asp:Label ID="priceLabel" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# "₹"+ Eval("price") %>' />
                        <asp:Label ID="netpriceLabel" runat="server" Font-Italic="True" Font-Strikeout="True" Font-Size="Small" ForeColor="Gray" Text='<%# "₹"+ Eval("netprice") %>' />
                        <asp:Label ID="discountLabel" runat="server" Text='<%# Eval("discount")+ "%" %>' ForeColor="#FF3300" />
                        <br />
                        &nbsp;<br />
                        <br />
                        <br />
                            </asp:HyperLink></ItemTemplate></asp:DataList></div></div><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [products] WHERE ([maincategory] = @maincategory)">
            <SelectParameters>
                <asp:Parameter DefaultValue="tables" Name="maincategory" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
