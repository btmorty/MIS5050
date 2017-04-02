﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="ustora.master" CodeFile="CatProducts.aspx.cs" Inherits="InClassExersice_ustora_Products" %>

<asp:Content runat="server" ID="Content2" ContentPlaceHolderID="cphHead">
    <title>Ustora Products</title>
</asp:Content>

<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="cphBody">
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shop</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" SelectCommand="SELECT [title_id], [title], [price] FROM [titles] WHERE ([type] = @type)">
            <SelectParameters>
                <asp:QueryStringParameter Name="type" QueryStringField="cat" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <LayoutTemplate>
                <div class="container">
                    <div class="row">
                        <div runat="server" id="itemPlaceHolder"></div>
                        </div>
                    </div>
            </LayoutTemplate>
            <ItemTemplate>
                <div class="col-md-3 col-sm-6">
                    <div class="single-shop-product">
                        <div class="product-upper">
                            <asp:HiddenField ID="hfID" runat="server" Value='<%# Eval("title_id") %>' />
                            <asp:HiddenField ID="hfTitle" runat="server" Value='<%# Eval("title") %>' />
                            <asp:HiddenField ID="hfPrice" runat="server" Value='<%# Eval("price") %>' />
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("title_id", "~/DataControls/Images/{0}.jpg") %>' />
                        </div>
                        <h2><a href='ProductDetail.aspx?id=<%# Eval("title_id") %>'><%# Eval("title") %></a></h2>
                        <div class="product-carousel-price">
                            <ins><%# Eval("price", "{0:c}") %></ins>
                        </div>  
                        <div class="product-option-shop">
                            <asp:LinkButton cssClass="add_to_cart_button" CommandName="Select" ID="LinkButton1" runat="server" Text="Add to Cart" ></asp:LinkButton>
                            <%--<a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="/canvas/shop/?add-to-cart=70">Add to cart</a>--%>
                        </div>                       
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>