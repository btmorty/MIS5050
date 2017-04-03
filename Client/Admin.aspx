<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" MasterPageFile="~/Client/MasterPage2.master" MaintainScrollPositionOnPostback="true" Inherits="Membership_Admin" %>

<%@ Register src="CurrentUserInfo.ascx" tagname="CurrentUserInfo" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBanner" runat="Server">
    <section id="banner"></section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <uc1:CurrentUserInfo ID="CurrentUserInfo1" runat="server" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MembershipDB %>" SelectCommand="SELECT [UserName], [Email], [LastLoginDate], [LastActivityDate], [IsApproved] FROM [vw_aspnet_MembershipUsers]"></asp:SqlDataSource>
            <h3>View Application Users</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="1061px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="LastLoginDate" HeaderText="LastLoginDate" SortExpression="LastLoginDate" />
                <asp:BoundField DataField="LastActivityDate" HeaderText="LastActivityDate" SortExpression="LastActivityDate" />
                <asp:CheckBoxField DataField="IsApproved" HeaderText="IsApproved" SortExpression="IsApproved" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <h3>Profile for Selected User</h3>
        <asp:Panel ID="Panel1" runat="server" Visible="false">
            <table>
    <tr>
        <td><asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
        <td><asp:TextBox ReadOnly="true" ID="txtFirstName" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
        <td><asp:TextBox ReadOnly="true" ID="txtLastName" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label3" runat="server" Text="Birth Date"></asp:Label></td>
        <td><asp:TextBox ReadOnly="true" ID="txtBirthDate" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label4" runat="server" Text="Street"></asp:Label></td>
        <td><asp:TextBox ReadOnly="true" ID="txtStreet" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label5" runat="server" Text="City"></asp:Label></td>
        <td><asp:TextBox ReadOnly="true" ID="txtCity" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label6" runat="server" Text="State"></asp:Label></td>
        <td><asp:TextBox ReadOnly="true" ID="txtState" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label7" runat="server" Text="Zip Code"></asp:Label></td>
        <td><asp:TextBox ReadOnly="true" ID="txtZip" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label8" runat="server" Text="Country"></asp:Label></td>
        <td><asp:TextBox ReadOnly="true" ID="txtCountry" runat="server"></asp:TextBox></td>
    </tr>
</table>
        </asp:Panel>
    </div>
    </form>
</asp:Content>
