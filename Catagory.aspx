<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Catagory.aspx.cs" Inherits="ChangeMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBanner" runat="Server">
    <section id="banner"></section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ablums %>" SelectCommand="SELECT DISTINCT [Album Name] FROM [ALBUM]"></asp:SqlDataSource>
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
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("type", "Client_Images/{0}.jpg") %>' />
                        </div>
                        <h2><a href='CatProducts.aspx?cat=<%# Eval("type") %>'><%# Eval("type") %></a></h2>
                        <div class="product-carousel-price">
                        </div>  
                        <div class="product-option-shop">
                        </div>                       
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>