<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PhotoDetail.aspx.cs" MasterPageFile="~/Client/MasterPage2.master" Inherits="InClassExersice_ustora_ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBanner" runat="Server">
    <section id="banner"></section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server"> 
        <H1>Photo Details</H1>
        <hr />
    <div class="single-product-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PhotoID], [PhotoName], [AlbumID] FROM [PHOTO] WHERE ([PhotoID] = @PhotoID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="PhotoID" QueryStringField="id" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="PhotoID" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <asp:HiddenField ID="phID" runat="server" Value='<%# Eval("PhotoID") %>' />
                            <asp:HiddenField ID="phName" runat="server" Value='<%# Eval("PhotoName") %>' />
                         <div class="product-content-right"></div>
                           <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PhotoName", "~/Client_Images/{0}.jpg") %>' Height="50%" Width="50%" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4">
                                <div class="product-inner">
                                    <h2 class="product-name"><%# Eval("PhotoName") %></h2>
                                    <div class="product-inner-price">
                                        <p>$50.00</p>
                                        <%--<ins><%# Eval("price", "{0:c}") %></ins>--%>
                                    </div>    
                                        <div class="quantity">
                                            <asp:TextBox ID="TxtQty" runat="server" TextMode="Number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1"></asp:TextBox>
                                        </div>
                                        <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" ></asp:Button>                       
                                </div>
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                        </ItemTemplate>
                    </asp:FormView>
                    </div>                    
                </div>
            </div>
        </div>
 </asp:Content>