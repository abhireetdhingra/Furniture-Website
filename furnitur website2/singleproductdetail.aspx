<%@ Page Title="" Language="C#" MasterPageFile="~/publicview.Master" AutoEventWireup="true" CodeBehind="singleproductdetail.aspx.cs" Inherits="furnitur_website2.singleproductdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <table class="table table-bordered">
            <tr>
                <td rowspan="6">

                    <asp:Image ID="Image1" runat="server" Height="310px" Width="347px" />

                </td>
                <td colspan="3">

                    <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>

                </td>
               
            </tr>
            <tr>
                <td colspan="3">

                   <span style="color:#666666">by</span> <asp:Label ID="lblBrand" runat="server" Font-Italic="True" Font-Size="Medium" ForeColor="#666666"></asp:Label>

                </td>
               
            </tr>
            <tr>
                <td colspan="3">

                   <span style="color:#FF9933; font-weight:bold">Primary Material Used:</span> <asp:Label ID="lblprimaterial" runat="server" Font-Size="Medium" ForeColor="#FF9933"></asp:Label>

                </td>
               
            </tr>
            <tr>
                <td>

                   <span style="font-size:large">Price</span><span> &#8377;</span> <asp:Label ID="lblnetprice" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>

                </td>
               
                <td>

                   <span style="color:gray">&#8377;</span> <asp:Label ID="lblprice" runat="server" Font-Strikeout="True" ForeColor="Gray"></asp:Label>

                </td>
               
                <td>

                    <asp:Label ID="lbldiscount" runat="server" ForeColor="#FF3300"></asp:Label><span style="color:#FF3300">% Discount</span>

                </td>
               
            </tr>
            <tr>
                <td>
                    Quantity
                </td>
                <td>
                    <asp:DropDownList ID="ddllist" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Quantity Must be specified" ControlToValidate="ddllist" ForeColor="#FFCC00" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Button ID="Btncart" runat="server" Text="Add To Cart" CssClass="btn btn-block btn-sm btn-warning" OnClick="Btncart_Click" />
                </td>
                <td>
                    <asp:Button ID="Btnwishlist" runat="server" Text="Add To Wish List" CausesValidation="False" CssClass="btn btn-sm btn-block btn-secondary" />
                </td>
                <td>
                    <asp:Label ID="Lblmsg" runat="server" ForeColor="#FF5050"></asp:Label>
                </td>
            </tr>
           
           
            
           
        </table>
        <table class="table-bordered">
            <tr>
                <td colspan="4">
                    <span>Description:</span><asp:Label ID="lbldesc" runat="server" BorderColor="#009900"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource runat="server" ID="SqlDataSOurce1" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [products] WHERE ([productid] = @productid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="productid" QueryStringField="pid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
