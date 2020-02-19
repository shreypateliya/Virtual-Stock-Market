<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="VSM.Admin.UserManagement" %>

<%@ Import Namespace="VSM.Class" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../bootstrap-4.4.1-dist/css/bootstrap.min.css" />
    <title></title>
    <style type="text/css">
        table {
            text-align: center;
        }
    </style>
    <%
        int id = Convert.ToInt32(Request.QueryString["id"]);
    %>
</head>
<body>
    <form runat="server" id="Form1">
        <div>
        </div>
    </form>
</body>
</html>
