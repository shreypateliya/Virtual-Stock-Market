<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VSM.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Login</h1>
            <asp:TextBox ID="txtmail" runat="server" placeholder="E-mail"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtpass" runat="server" TextMode="password" placeholder="Password"></asp:TextBox>
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br />
            <asp:Label ID="LoginError" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
