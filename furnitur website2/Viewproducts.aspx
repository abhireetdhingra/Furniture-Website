<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Viewproducts.aspx.cs" Inherits="furnitur_website2.Viewproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">View all products</h1>
    <div class="container">
        <div class="row" >
            <div class="col-md-10 mx-auto">
                 <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                        </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="font-weight-bold">Main category</label>
                    </div>
                    <div class="col-md-6">
                        <asp:RadioButtonList runat="server" ID="rblmaincate" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="rblmaincate_SelectedIndexChanged">
                            <asp:ListItem>tables</asp:ListItem>
                            <asp:ListItem>sofa</asp:ListItem>
                            <asp:ListItem>chairs</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="productid" DataSourceID="SqlDataSource1" AllowPaging="True" ForeColor="#333333">
                           <Columns>
                               <asp:HyperLinkField DataNavigateUrlFields="productid" DataNavigateUrlFormatString="edit-delete(2).aspx?pid={0}" Text="edit/delete" />
                               <asp:BoundField DataField="productid" HeaderText="productid" InsertVisible="False" ReadOnly="True" SortExpression="productid" />
                               <asp:ImageField DataImageUrlField="picture" HeaderText="image">
                                   <ControlStyle Height="100px" Width="100px" />
                               </asp:ImageField>
                               <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                               <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" Visible="False" />
                               <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
                               <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                               <asp:BoundField DataField="primarymaterial" HeaderText="primarymaterial" SortExpression="primarymaterial" />
                               <asp:BoundField DataField="discount" HeaderText="discount" SortExpression="discount" />
                               <asp:BoundField DataField="netprice" HeaderText="netprice" SortExpression="netprice" />
                               <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                               <asp:BoundField DataField="maincategory" HeaderText="maincategory" SortExpression="maincategory" />
                               <asp:BoundField DataField="categoryname" HeaderText="categoryname" SortExpression="categoryname" />
                           </Columns>
                           <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="#333333" />
                           <PagerStyle BackColor="Gray" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" />
                        </asp:GridView>
                            </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [products] WHERE ([maincategory] = @maincategory)">
        <SelectParameters>
            <asp:ControlParameter ControlID="rblmaincate" Name="maincategory" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>
