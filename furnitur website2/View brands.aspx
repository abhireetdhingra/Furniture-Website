﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="View brands.aspx.cs" Inherits="furnitur_website2.View_brands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="text-center">View all Brands</h1>
    <div class="container">
        <div class="row" >
            <div class="col-md-10 mx-auto">
                 <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                        </div>
                <div class="row">
                    <div class="col-6">
                        <label>Main category</label>
                    </div>
                    <div class="col-6">
                        <asp:DropDownList ID="Ddlmaincategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Ddlcategory_SelectedIndexChanged">
                            <asp:ListItem>Chairs</asp:ListItem>
                            <asp:ListItem>Tables</asp:ListItem>
                            <asp:ListItem>SoFa</asp:ListItem>
                            <asp:ListItem>Beds</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                        </div>
                <div class="row">
                    <div class="col-md-12">
                        <hr />
                        <hr />
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#333333" CssClass="table table-bordered" DataKeyNames="maincategory,brandname" DataSourceID="SqlDataSource1" Font-Bold="False" HorizontalAlign="Center" AllowPaging="True" AutoGenerateDeleteButton="True">
                                <Columns>
                                    <asp:BoundField DataField="maincategory" HeaderText="maincategory" ReadOnly="True" SortExpression="maincategory" />
                                    <asp:BoundField DataField="brandname" HeaderText="brandname" ReadOnly="True" SortExpression="brandname" />
                                </Columns>
                                <HeaderStyle BackColor="Silver" />
                            </asp:GridView>
                            </div>
                        </div>
                     </div>

                </div>
            </div>
        </div>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdconnectionstring %>" SelectCommand="SELECT * FROM [brands] WHERE ([maincategory] = @maincategory)">
         <SelectParameters>
             <asp:ControlParameter ControlID="Ddlmaincategory" Name="maincategory" PropertyName="SelectedValue" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
</asp:Content>