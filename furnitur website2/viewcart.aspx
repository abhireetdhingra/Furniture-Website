<%@ Page Title="" Language="C#" MasterPageFile="~/publicview.Master" AutoEventWireup="true" CodeBehind="viewcart.aspx.cs" Inherits="furnitur_website2.viewcart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" CssClass="table table-bordered table-responsive" Font-Size="Large">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" CommandArgument='<%# Eval("prodid") %>' OnCommand="Button1_Command" runat="server" CausesValidation="false" CommandName="" Text="Remove" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    <asp:ImageField HeaderText="Photo" DataImageUrlField="Photo" ControlStyle-Height="100" ControlStyle-Width="120">
                <ControlStyle Height="100px" Width="120px"></ControlStyle>
            </asp:ImageField>
            <asp:BoundField HeaderText="SrNo." DataField="SrNo" />
            <asp:BoundField HeaderText="Name" DataField="prodname" />
            <asp:BoundField HeaderText="Brand" DataField="brand" />
           <asp:BoundField HeaderText="Net Price" DataField="netprice" />
            <asp:BoundField HeaderText="Price" DataField="price" />
            <asp:BoundField HeaderText="Discount" DataField="discount" />           
            <asp:BoundField HeaderText="Qty." DataField="quantity" />
            <asp:BoundField HeaderText="Amount" DataField="Amount" />      
                 </Columns>
                </asp:GridView>                    
            </div>
            
        </div>
        <div class="row">
            <div class="col-md-12 float-right">
                <span class="font-weight-bold">Total Amount To Pay-₹</span>
                  <asp:Label ID="lbltotal" Font-Bold="true" runat="server" Text=""></asp:Label>
                
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                 <asp:Button ID="btnplaceorder" style="margin-top:10px;" CssClass="btn btn-info btn-block" runat="server" Text="Place Order" OnClick="btnplaceorder_Click"></asp:Button>
            </div>
        </div>
         <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getcart" TypeName="furnitur_website2.Cart"></asp:ObjectDataSource>
    </div>
</asp:Content>
