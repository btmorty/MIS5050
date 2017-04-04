<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CurrentUserInfo.ascx.cs" Inherits="Membership_CurrentUserInfo" %>
<h1>Welcome, <asp:LoginName ID="LoginName1" runat="server" /></h1>
<h3>Go back to <a href="Welcome.aspx">Welcome.aspx</a></h3>
<br />
<h3>Change your password</h3>
<asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
    <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
    <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
    <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
    <TextBoxStyle Font-Size="0.8em" />
    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
</asp:ChangePassword>

<h3>View/Edit your Profile Data</h3>
<table>
    <tr>
        <td><asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
        <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
        <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label3" runat="server" Text="Birth Date"></asp:Label></td>
        <td><asp:TextBox ID="txtBirthDate" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label4" runat="server" Text="Street"></asp:Label></td>
        <td><asp:TextBox ID="txtStreet" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label5" runat="server" Text="City"></asp:Label></td>
        <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label6" runat="server" Text="State"></asp:Label></td>
        <td><asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label7" runat="server" Text="Zip Code"></asp:Label></td>
        <td><asp:TextBox ID="txtZip" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label8" runat="server" Text="Country"></asp:Label></td>
        <td><asp:TextBox ID="txtCountry" runat="server"></asp:TextBox></td>
    </tr>
</table><br />
<asp:Button ID="Button1" runat="server" Text="Update Profile" OnClick="Button1_Click" />
<br />
<asp:Label ID="UpdateConfirm" runat="server"></asp:Label>
