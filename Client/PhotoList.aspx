<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage2.master" CodeFile="PhotoList.aspx.cs" Inherits="InClassExersice_ustora_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBanner" runat="Server">
    <section id="banner"></section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server"> 
        <H1>Photos</H1>
        <hr />
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PhotoID], [PhotoName] FROM [PHOTO] WHERE ([AlbumID] = @AlbumID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="AlbumID" QueryStringField="alb" />
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
                            <asp:HiddenField ID="phID" runat="server" Value='<%# Eval("PhotoID") %>' />
                            <asp:HiddenField ID="phName" runat="server" Value='<%# Eval("PhotoName") %>' />
                            <a href='PhotoDetail.aspx?id=<%# Eval("PhotoID") %>'><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PhotoName", "~/Client_Images/{0}.jpg") %>' Height="200px" Width="200px" />
                        </div>
                        <h2><a href='PhotoDetail.aspx?id=<%# Eval("PhotoID") %>'><%# Eval("PhotoName") %></a></h2>
                        <div class="product-carousel-price">
                            <ins>$50.00</ins>
                            <%--<ins><%# Eval("price", "{0:c}") %></ins>--%>
                        </div>  
                        <div class="product-option-shop">
                            <asp:Button CommandName="Select" ID="LinkButton1" runat="server" Text="Add to Cart" ></asp:Button>
                        </div>                       
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>