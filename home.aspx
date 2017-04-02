<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="ChangeMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBanner" runat="Server">
    <section id="banner"></section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="flex-container">
        <div class="wsite-multicol">
            <div class="wsite-multicol-table-wrap" style="margin: 0 -5px;">
                <table class="wsite-multicol-table">
                    <tbody class="wsite-multicol-tbody">
                        <tr class="wsite-multicol-tr">
                            <td class="wsite-multicol-col" style="width: 50.105263157895%; padding: 0 5px;">
                                <div>
                                    <div class="wsite-image wsite-image-border-none " style="padding-top: 10px; padding-bottom: 10px; margin-left: 0px; margin-right: 0px; text-align: center">
                                        <a href="/weddings.html">
                                            <img src="images/photo1_1_orig.png" alt="Picture" style="width: auto; max-width: 100%">
                                        </a>
                                        <div style="display: block; font-size: 90%"></div>
                                    </div>
                                </div>

                                <div>
                                    <div class="wsite-image wsite-image-border-none " style="padding-top: 10px; padding-bottom: 10px; margin-left: 0px; margin-right: 0px; text-align: center">
                                        <a href="/contact.html">
                                            <img src="images/photo3_1_orig.png" alt="Picture" style="width: auto; max-width: 100%">
                                        </a>
                                        <div style="display: block; font-size: 90%"></div>
                                    </div>
                                </div>



                            </td>
                            <td class="wsite-multicol-col" style="width: 49.894736842105%; padding: 0 5px;">

                                <div>
                                    <div class="wsite-image wsite-image-border-none " style="padding-top: 10px; padding-bottom: 10px; margin-left: 0px; margin-right: 0px; text-align: center">
                                        <a href="/portraits.html">
                                            <img src="images/photo2_1_orig.png" alt="Picture" style="width: auto; max-width: 100%">
                                        </a>
                                        <div style="display: block; font-size: 90%"></div>
                                    </div>
                                </div>

                                <div>
                                    <div class="wsite-image wsite-image-border-none " style="padding-top: 10px; padding-bottom: 10px; margin-left: 0px; margin-right: 0px; text-align: center">
                                        <a href="/journal.html">
                                            <img src="images/photo4_1_orig.png" alt="Picture" style="width: auto; max-width: 100%">
                                        </a>
                                        <div style="display: block; font-size: 90%"></div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

