<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="furnitur_website2.PlaceOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function validate() {
            return alert("Place order?")
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:gray" class="text-center">Place your order in just few steps</h1>
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="row">
                    <div class="col-md-12">
                        
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Address is necessary" ControlToValidate="tbaddress" ForeColor="#666666" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="tbaddress" CssClass="form-control" TextMode="MultiLine"
                            placeholder="Enter your Full Address (including city and postal code)"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <hr />
                    </div>
                </div>
                 <div class="row">
                     <div class="col-md-6">
                         <label style="font-size:large">Total Payble Amount</label>
                     </div>
                     
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="tbamount" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-12">
                        <hr />
                    </div>
                </div>
                 <div class="row">
                     <div class="col-md-6">
                         <label style="font-size:large;">Mode of Payment</label>
                         <small class="d-inline-block" style="color:yellowgreen">We accept all kinds of cards!!</small>
                     </div>
                    <div class="col-md-6">
                        <asp:RadioButtonList runat="server" ID="rblpayment" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Online Payment</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-12">
                        <hr />
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-12">
                       <asp:Button runat="server" onclientclick="return validate()" Text="Confirm Order" CssClass="btn btn-secondary btn-block" ID="btnconfirm" OnClick="Unnamed2_Click"  />
                    </div>
                     
                </div>
               

            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceorders" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" DeleteCommand="DELETE FROM [orders] WHERE [orderid] = @orderid" InsertCommand="INSERT INTO [orders] ([emailid], [dateoforder], [address], [totalamount], [orderstatus], [ordertype]) VALUES (@emailid, @dateoforder, @address, @totalamount, @orderstatus, @ordertype);set @orderid=@@IDENTITY" OnInserted="SqlDataSourceorders_Inserted" SelectCommand="SELECT * FROM [orders]" UpdateCommand="UPDATE [orders] SET [emailid] = @emailid, [dateoforder] = @dateoforder, [address] = @address, [totalamount] = @totalamount, [orderstatus] = @orderstatus, [ordertype] = @ordertype WHERE [orderid] = @orderid">
        <DeleteParameters>
            <asp:Parameter Name="orderid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:SessionParameter Name="emailid" SessionField="emailid2" Type="String" />
            <asp:ControlParameter ControlID="HiddenField1datetime" Name="dateoforder" PropertyName="Value" Type="String" />
            <asp:ControlParameter ControlID="tbaddress" Name="address" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="tbamount" Name="totalamount" PropertyName="Text" Type="Int32" />
            <asp:Parameter DefaultValue="pending" Name="orderstatus" Type="String" />
            <asp:Parameter DefaultValue="CashOnDelivery" Name="ordertype" Type="String" />
            <asp:Parameter Direction="Output" Name="orderid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="dateoforder" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="totalamount" Type="Int32" />
            <asp:Parameter Name="orderstatus" Type="String" />
            <asp:Parameter Name="ordertype" Type="String" />
            <asp:Parameter Name="orderid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:HiddenField ID="HiddenField1datetime" runat="server" />
    <asp:HiddenField ID="HiddenFieldname" runat="server" />
    <asp:HiddenField ID="HiddenFieldbrand" runat="server" />
    <asp:HiddenField ID="HiddenFieldnetprice" runat="server" />
    <asp:SqlDataSource ID="SqlDataSource1details" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" DeleteCommand="DELETE FROM [order_details] WHERE [odid] = @odid" InsertCommand="INSERT INTO [order_details] ([orderid], [productid], [pname], [brand], [photo], [netprice], [price], [discount], [quantity], [Total_amt]) VALUES (@orderid, @productid, @pname, @brand, @photo, @netprice, @price, @discount, @quantity, @Total_amt)" SelectCommand="SELECT * FROM [order_details]" UpdateCommand="UPDATE [order_details] SET [orderid] = @orderid, [productid] = @productid, [pname] = @pname, [brand] = @brand, [photo] = @photo, [netprice] = @netprice, [price] = @price, [discount] = @discount, [quantity] = @quantity, [Total_amt] = @Total_amt WHERE [odid] = @odid">
        <DeleteParameters>
            <asp:Parameter Name="odid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="HiddenFieldorderid" Name="orderid" PropertyName="Value" Type="Int32" />
            <asp:ControlParameter ControlID="HiddenFieldprodid" Name="productid" PropertyName="Value" Type="Int32" />
            <asp:ControlParameter ControlID="HiddenFieldname" Name="pname" PropertyName="Value" Type="String" />
            <asp:ControlParameter ControlID="HiddenFieldbrand" Name="brand" PropertyName="Value" Type="String" />
            <asp:ControlParameter ControlID="HiddenFieldphoto" Name="photo" PropertyName="Value" Type="String" />
            <asp:ControlParameter ControlID="HiddenFieldnetprice" Name="netprice" PropertyName="Value" Type="Int32" />
            <asp:ControlParameter ControlID="HiddenFieldprice" Name="price" PropertyName="Value" Type="Int32" />
            <asp:ControlParameter ControlID="HiddenFielddiscount" Name="discount" PropertyName="Value" Type="Int32" />
            <asp:ControlParameter ControlID="HiddenFieldquantity" Name="quantity" PropertyName="Value" Type="Int32" />
            <asp:ControlParameter ControlID="HiddenFieldamt" Name="Total_amt" PropertyName="Value" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="orderid" Type="Int32" />
            <asp:Parameter Name="productid" Type="Int32" />
            <asp:Parameter Name="pname" Type="String" />
            <asp:Parameter Name="brand" Type="String" />
            <asp:Parameter Name="photo" Type="String" />
            <asp:Parameter Name="netprice" Type="Int32" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="discount" Type="Int32" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="Total_amt" Type="Int32" />
            <asp:Parameter Name="odid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:HiddenField ID="HiddenFieldprice" runat="server" />
    <asp:HiddenField ID="HiddenFielddiscount" runat="server" />
    <asp:HiddenField ID="HiddenFieldphoto" runat="server" />
    <asp:HiddenField ID="HiddenFieldquantity" runat="server" />
    <asp:HiddenField ID="HiddenFieldamt" runat="server" />
    <asp:HiddenField ID="HiddenFieldorderid" runat="server" />
    <asp:HiddenField ID="HiddenFieldprodid" runat="server" />
</asp:Content>
