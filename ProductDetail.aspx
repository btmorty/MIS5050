<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" MasterPageFile="ustora.master" Inherits="InClassExersice_ustora_ProductDetail" %>

<asp:Content runat="server" ID="Content2" ContentPlaceHolderID="cphHead">
    <title>Ustora Product Details</title>
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
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" SelectCommand="SELECT [title_id], [title], [price], [pubdate], [type], [notes] FROM [titles] WHERE ([title_id] = @title_id)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="title_id" QueryStringField="id" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="title_id" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <asp:HiddenField ID="hfID" runat="server" Value='<%# Eval("title_id") %>' />
                            <asp:HiddenField ID="hfTitle" runat="server" Value='<%# Eval("title") %>' />
                            <asp:HiddenField ID="hfPrice" runat="server" Value='<%# Eval("price") %>' />
                         <div class="product-content-right"></div>
                           <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("title_id", "~/DataControls/Images/{0}.jpg") %>' />
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name"><%# Eval("title") %></h2>
                                    <div class="product-inner-price">
                                        <ins><%# Eval("price", "{0:c}") %></ins>
                                    </div>    
                                        <div class="quantity">
                                            <asp:TextBox ID="TxtQty" runat="server" TextMode="Number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1"></asp:TextBox>
                                        </div>
                                        <asp:Button cssClass="add_to_cart_button" ID="btnAddToCart" runat="server" Text="Add to Cart" ></asp:Button>  
                                    <div class="product-inner-category">
                                        <p>Category: <%# Eval("type") %></p>
                                        <p>Publication Date: <%# Eval("pubdate") %></p>
                                    </div>
                                    
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <h2>Product Description</h2>  
                                                <p><%# Eval("notes") %></p>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                <h2>Reviews</h2>
                                                <div class="submit-review">
                                                    <p><label for="name">Name</label> <input name="name" type="text"></p>
                                                    <p><label for="email">Email</label> <input name="email" type="email"></p>
                                                    <div class="rating-chooser">
                                                        <p>Your rating</p>

                                                        <div class="rating-wrap-post">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p><label for="review">Your review</label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                    <p><input type="submit" value="Submit"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        </ItemTemplate>
                    </asp:FormView>
                    </div>                    
                </div>
            </div>
        </div>
 </asp:Content>