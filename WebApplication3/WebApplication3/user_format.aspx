<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_format.aspx.cs" Inherits="WebApplication3.user_format" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        table td
        {
            border: none;
            padding-top: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container-fluid">
            <table class=" table   table-borderless">
                <thead>
                    <tr>
                        <th>
                            <h2 class="">
                                USER DETAILS</h2>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td rowspan="4">
                            <img src="images/facebook.png" class="image-responsive img-fluid" width="200" height="200" />
                        </td>
                        <th>
                            First name
                        </th>
                        <th>
                            Middle name
                        </th>
                        <th>
                            Last name
                        </th>
                    </tr>
                    <tr>
                        
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="Label21" runat="server" Text="Email"></asp:Label>
                        </th>
                        <th>
                            <asp:Label ID="Label10" runat="server" Text="Phone Number"></asp:Label>
                        </th>
                        <th>
                            <asp:Label ID="Label22" runat="server" Text="BirthDate"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="Label23" runat="server" Text="Address"></asp:Label>
                        </th>
                        <th>
                            <asp:Label ID="Label6" runat="server" Text="Country"></asp:Label>
                        </th>
                        <th>
                            <asp:Label ID="Label7" runat="server" Text="City"></asp:Label>
                        </th>
                        <th>
                            <asp:Label ID="Label9" runat="server" Text="state"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="Label11" runat="server" Text="Pinecode"></asp:Label>
                        </th>
                        <th>
                            <asp:Label ID="Label16" runat="server" Text="Gender"></asp:Label>
                        </th>
                        <th>
                            <asp:Label ID="Label17" runat="server" Text="Active"></asp:Label>
                        </th>
                        <th>
                            <asp:Label ID="Label18" runat="server" Text="Delete"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                        <asp:Button ID="Button2"
                            runat="server" Text="Button" />
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    </div>
    </form>
</body>
</html>
