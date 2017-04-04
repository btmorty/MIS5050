<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage2.master" CodeFile="UserProfile.aspx.cs" Inherits="Client_UserProfile" %>

<%@ Register src="CurrentUserInfo.ascx" tagname="CurrentUserInfo" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBanner" runat="Server">
    <section id="banner"></section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    
    <div>
    
        <uc1:CurrentUserInfo ID="CurrentUserInfo1" runat="server" />
    
    </div>
    
</asp:Content>