<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Membership_Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <h2>You are not Loged in. Please log in <asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="here." /></h2>
            </AnonymousTemplate>
            <LoggedInTemplate>
                Authenticated
            </LoggedInTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="Admin">
                    <ContentTemplate>
                        <ul>
                            <li><a href="Admin.aspx">Admin.aspx</a></li>
                            <li><a href="User.aspx">User.aspx</a></li>
                            <li><asp:LoginStatus ID="LoginStatus2" runat="server" /></li>
                        </ul>
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="User">
                    <ContentTemplate>
                        <ul>
                            <li><a href="User.aspx">User.aspx</a></li>
                            <li><asp:LoginStatus ID="LoginStatus2" runat="server" /></li>
                        </ul>
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
    </div>
    </form>
</body>
</html>
