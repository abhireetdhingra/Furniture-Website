<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminorders.aspx.cs" Inherits="furnitur_website2.adminorders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="jumbotron">
            <h1>Orders from Customers</h1>
        </div>
        <div class="row">
            <div class="col">
                <asp:GridView runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="orderid" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="orderid" HeaderText="orderid" InsertVisible="False" ReadOnly="True" SortExpression="orderid" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                        <asp:BoundField DataField="dateoforder" HeaderText="dateoforder" SortExpression="dateoforder" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="totalamount" HeaderText="totalamount" SortExpression="totalamount" />
                        <asp:BoundField DataField="orderstatus" HeaderText="orderstatus" SortExpression="orderstatus" />
                        <asp:BoundField DataField="ordertype" HeaderText="ordertype" SortExpression="ordertype" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="" Text="Cancel"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [orders] WHERE ([orderstatus] = @orderstatus)">
            <SelectParameters>
                <asp:Parameter DefaultValue="pending" Name="orderstatus" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HiddenField runat="server"></asp:HiddenField>
         <asp:HiddenField runat="server"></asp:HiddenField>

    </div>
    
</asp:Content>
