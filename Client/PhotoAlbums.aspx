<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage2.master" CodeFile="PhotoAlbums.aspx.cs" Inherits="Catagory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBanner" runat="Server">
    <section id="banner"></section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">    
        <H1>Photo Albums</H1>
        <hr />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [AlbumName], AlbumID, AlbumThumb FROM [ALBUM]"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
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
                            <a href='PhotoList.aspx?alb=<%# Eval("AlbumID") %>'><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("AlbumThumb", "~/Client_Images/{0}.jpg") %>' Height="200px" Width="200px" />
                            </div>
                        <h2><a href='PhotoList.aspx?alb=<%# Eval("AlbumID") %>'><%# Eval("AlbumName") %></a></h2>
                        <div class="product-carousel-price">
                        </div>  
                        <div class="product-option-shop">
                        </div>                       
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
</asp:Content>