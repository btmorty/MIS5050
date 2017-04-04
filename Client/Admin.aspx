<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" MasterPageFile="MasterPage2.master" MaintainScrollPositionOnPostback="true" Inherits="Membership_Admin" %>

<%@ Register src="CurrentUserInfo.ascx" tagname="CurrentUserInfo" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBanner" runat="Server">
    <section id="banner"></section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">

    <div>
        <uc1:CurrentUserInfo ID="CurrentUserInfo1" runat="server" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MembershipDB %>" SelectCommand="SELECT [UserName], [Email], [LastLoginDate], [LastActivityDate], [IsApproved] FROM [vw_aspnet_MembershipUsers]"></asp:SqlDataSource>
            <h3>View Application Users</h3>
        <asp:GridView ID="GridView1" DataKeyNames="UserName" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="User Name" ReadOnly="True" SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email Address" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="LastLoginDate" HeaderText="Last Login" ReadOnly="True" SortExpression="LastLoginDate" />
                <asp:CheckBoxField DataField="IsOnline" HeaderText="Is Online?" ReadOnly="True" SortExpression="IsOnline" />
                <asp:TemplateField HeaderText="Is Admin?">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Enabled="false"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Change Admin">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Edit" Text="Change Admin"></asp:LinkButton>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Update">Update</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:ButtonField CommandName="Select" HeaderText="View Profile" ShowHeader="True" Text="View" />
            </Columns>
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

</asp:Content>
