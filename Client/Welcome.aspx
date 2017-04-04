<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage2.master" CodeFile="Welcome.aspx.cs" Inherits="Membership_Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBanner" runat="Server">
    <section id="banner"></section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div>
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <h2>You are not Logged in. Please log in <asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="here." /></h2>
            </AnonymousTemplate>
            <LoggedInTemplate>
                Authenticated
            </LoggedInTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="Admin">
                    <ContentTemplate>
                        <ul>
                            <li><a href="Admin.aspx">Admin.aspx</a></li>
                            <li><a href="UserProfile.aspx">User.aspx</a></li>
                            <li><asp:LoginStatus ID="LoginStatus2" runat="server" /></li>
                        </ul>
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="User">
                    <ContentTemplate>
                        <ul>
                            <li><a href="UserProfile.aspx">User.aspx</a></li>
                            <li><asp:LoginStatus ID="LoginStatus2" runat="server" /></li>
                        </ul>
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
    </div>
</asp:Content>
