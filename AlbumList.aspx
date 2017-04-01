<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TitleList.aspx.cs" Inherits="DataControls_TitleList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" SelectCommand="SELECT [title_id], [title], [price] FROM [titles]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
            
            <LayoutTemplate>
                <table>
                    <tr id="groupPlaceHolder" runat="server">

                    </tr>
                    <tr>
                        <td colspan="3">
                            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="9">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
                        </td>
                    </tr>

                </table>
            </LayoutTemplate>
            
            <GroupTemplate>
                <tr>
                    <td id="itemPlaceHolder" runat="server"></td>
                </tr>
            </GroupTemplate>

            <ItemTemplate>
                <td style="background-color: #DCDCDC;color: #000000;">
                    <table>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("title_id", "TitleDetail.aspx?id={0}") %>'>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("title_id", "Images/t{0}.jpg") %>' />
                                </asp:HyperLink>
                            </td>
                            <td>
                                Title:
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>' />
                                <br />
                                Price:
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                                <br />

                            </td>
                        </tr>

                    </table>
                     

                </td>
            </ItemTemplate>

             <AlternatingItemTemplate>
                <td style="background-color: #FFF8DC;color: #000000;">
                    <table>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("title_id", "TitleDetail.aspx?id={0}") %>'>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("title_id", "Images/t{0}.jpg") %>' />
                                </asp:HyperLink>
                            </td>
                            <td>
                                Title:
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>' />
                                <br />
                                Price:
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                                <br />

                            </td>
                        </tr>

                    </table>
                     

                </td>
            </AlternatingItemTemplate>

        </asp:ListView>
        <br />
        <br />
        <br />
        
    </div>
    </form>
</body>
</html>
