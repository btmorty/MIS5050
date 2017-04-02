<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="InClassExersice_ustora_Cart" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBanner" runat="Server">
    <section id="banner"></section>
</asp:Content>

<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="ContentBody">

    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="product-content-right">
                <div class="woocommerce">
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" OnItemDeleting="ListView1_ItemDeleting" OnItemCommand="ListView1_ItemCommand">
                        <LayoutTemplate>
                            <table cellspacing="0" class="shop_table cart">
                                <thead>
                                    <tr>
                                        <th class="product-remove">&nbsp;</th>
                                        <th class="product-thumbnail">&nbsp;</th>
                                        <th class="product-name">Product</th>
                                        <th class="product-price">Price</th>
                                        <th class="product-quantity">Quantity</th>
                                        <th class="product-subtotal">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr runat="server" id="itemPlaceHolder"></tr>
                                    <tr>
                                        <td class="actions" colspan="6">
                                            <div class="coupon">
                                                <label for="coupon_code">Coupon:</label>
                                                <input type="text" placeholder="Coupon code" value="" id="coupon_code" class="input-text" name="coupon_code">
                                                <input type="submit" value="Apply Coupon" name="apply_coupon" class="button">
                                            </div>
                                            <asp:Button ID="btnUpdate" CommandName="updateQty" CssClass="button" runat="server" Text="Update Cart" />
                                            <input type="submit" value="Checkout" name="proceed" class="checkout-button button alt wc-forward">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <tr class="cart_item">
                                <td class="product-remove">
                                    <asp:LinkButton ID="btnDelete" runat="server" CssClass="remove" CommandName="Delete">×</asp:LinkButton>
                                </td>

                                <td class="product-thumbnail">
                                    <a href="single-product.html">
                                        <img runat="server" width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src='<%# Eval("ID", "~/DataControls/Images/{0}.jpg") %>'></a>
                                </td>

                                <td class="product-name">
                                    <a runat="server" href='<%# Eval("ID","Product.Detail.aspx?id={0}") %>'><%# Eval("Name") %></a>
                                </td>

                                <td class="product-price">
                                    <span class="amount" runat="server"><%# Eval("Price") %></span>
                                </td>

                                <td class="product-quantity">
                                    <div class="quantity buttons_added">
                                        <input type="button" class="minus" value="-">
                                        <input runat="server" id="txtQty" class="input-text qty text" number="1" title="Qty" value="1" min="0" step="1">
                                        <input type="button" class="plus" value="+">
                                    </div>
                                </td>

                                <td class="product-subtotal">
                                    <span class="amount" runat="server"><%# Eval("ExtendedPrice") %></span>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>


                    <div class="cart-collaterals">
                        <div class="cart_totals ">
                            <h2>Cart Totals</h2>

                            <table cellspacing="0">
                                <tbody>
                                    <tr class="cart-subtotal">
                                        <th>Cart Subtotal</th>
                                        <td><span class="amount">£15.00</span></td>
                                    </tr>

                                    <tr class="shipping">
                                        <th>Shipping and Handling</th>
                                        <td>Free Shipping</td>
                                    </tr>

                                    <tr class="order-total">
                                        <th>Order Total</th>
                                        <td><strong><span class="amount">£15.00</span></strong> </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
