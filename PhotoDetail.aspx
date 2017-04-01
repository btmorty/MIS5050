<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TitleDetail.aspx.cs" Inherits="DataControls_TitleDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" SelectCommand="SELECT [title_id], [title], [type], [pub_id], [price], [advance], [royalty], [ytd_sales], [notes], [pubdate] FROM [titles] WHERE ([title_id] = @title_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="title_id" QueryStringField="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="title_id" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <EditItemTemplate>
                title_id:
                <asp:Label ID="title_idLabel1" runat="server" Text='<%# Eval("title_id") %>' />
                <br />
                title:
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />
                type:
                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                <br />
                pub_id:
                <asp:TextBox ID="pub_idTextBox" runat="server" Text='<%# Bind("pub_id") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                advance:
                <asp:TextBox ID="advanceTextBox" runat="server" Text='<%# Bind("advance") %>' />
                <br />
                royalty:
                <asp:TextBox ID="royaltyTextBox" runat="server" Text='<%# Bind("royalty") %>' />
                <br />
                ytd_sales:
                <asp:TextBox ID="ytd_salesTextBox" runat="server" Text='<%# Bind("ytd_sales") %>' />
                <br />
                notes:
                <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                pubdate:
                <asp:TextBox ID="pubdateTextBox" runat="server" Text='<%# Bind("pubdate") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                title_id:
                <asp:TextBox ID="title_idTextBox" runat="server" Text='<%# Bind("title_id") %>' />
                <br />
                title:
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />
                type:
                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                <br />
                pub_id:
                <asp:TextBox ID="pub_idTextBox" runat="server" Text='<%# Bind("pub_id") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                advance:
                <asp:TextBox ID="advanceTextBox" runat="server" Text='<%# Bind("advance") %>' />
                <br />
                royalty:
                <asp:TextBox ID="royaltyTextBox" runat="server" Text='<%# Bind("royalty") %>' />
                <br />
                ytd_sales:
                <asp:TextBox ID="ytd_salesTextBox" runat="server" Text='<%# Bind("ytd_sales") %>' />
                <br />
                notes:
                <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                pubdate:
                <asp:TextBox ID="pubdateTextBox" runat="server" Text='<%# Bind("pubdate") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("title_id", "Images/{0}.jpg") %>' /></td>
                        <td> title_id:
                <asp:Label ID="title_idLabel" runat="server" Text='<%# Eval("title_id") %>' />
                <br />
                title:
                <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
                <br />
                type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
                <br />
                pub_id:
                <asp:Label ID="pub_idLabel" runat="server" Text='<%# Bind("pub_id") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                <br />
                advance:
                <asp:Label ID="advanceLabel" runat="server" Text='<%# Bind("advance") %>' />
                <br />
                royalty:
                <asp:Label ID="royaltyLabel" runat="server" Text='<%# Bind("royalty") %>' />
                <br />
                ytd_sales:
                <asp:Label ID="ytd_salesLabel" runat="server" Text='<%# Bind("ytd_sales") %>' />
                <br />
                notes:
                <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                pubdate:
                <asp:Label ID="pubdateLabel" runat="server" Text='<%# Bind("pubdate") %>' />
                <br /></td>
                    </tr>
                </table>

            </ItemTemplate>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:FormView>

        <a href="TitleList.aspx">Back to Titles</a>

    </div>
    </form>
</body>
</html>
