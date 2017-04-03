<%@ Page Language="C#" MasterPageFile="../MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Membership_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBanner" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div style="text-align: center;">
      <div style="width: 350px; margin-left: auto; margin-right:auto;">
          <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CreateUserText="New User" CreateUserUrl="CreateUser.aspx" DestinationPageUrl="~/Client/PhotoAlbums.aspx" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" PasswordRecoveryText="Forgot Password?" PasswordRecoveryUrl="RecoverPassword.aspx" Width="350px">
              <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
              <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" CssClass="button" />
              <TextBoxStyle Font-Size="0.8em" />
              <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
          </asp:Login>
       </div>
    </div>
</asp:Content>
