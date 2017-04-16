<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PhotoDetail.aspx.cs" MasterPageFile="MasterPage2.master" Inherits="InClassExersice_ustora_ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBanner" runat="Server">
    <section id="banner"></section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="Server">
    <h1>Photo Details</h1>
    <hr />
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
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PhotoName", "~/Client_Images/{0}.jpg") %>' Height="50%" Width="50%" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <h2><%# Eval("PhotoName") %></h2>
                        <p>$50.00</p>
                        <asp:TextBox ID="TxtQty" runat="server" TextMode="Number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1"></asp:TextBox>
                        <br /><br />
                        <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart"></asp:Button>
                    </ItemTemplate>
                </asp:FormView>
            </div>
        </div>
    </div>
</asp:Content>
