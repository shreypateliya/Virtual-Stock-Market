<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="company_info.aspx.cs" Inherits="WebApplication3.WebForm7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        @media only screen and (max-width:980px)
        {
            .f
            {
                font-size: 30px;
            }
            .f1
            {
                font-size: 28px;
            }
        }
        @media only screen and (width:1024px)
        {
            .f
            {
                font-size: 25px;
            }
            .f1
            {
                font-size: 28px;
            }
        }
        .pd
        {
            padding-right: 100px;
        }
        .t:hover
        {
            background-color: #d3d3d3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <table class="table f table-borderless">
                    <thead>
                        <tr>
                            <th colspan="4" class="text-center pd">
                                <h2>
                                   COMPANY DETAILS
                                </h2>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="pr-5" style="width: 200px;">
                                <img src="images/facebook.png" class="image-responsive img-fluid" width="200" height="200" />
                            </th>
                            <th>
                               company Name
                            </th>
                            <th>
                                Contact No
                            </th>
                            <th>
                                Email
                            </th>
                            
                        </tr>
                        <tr class="t">
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
                                GstNo
                            </th>
                            <th>
                                CIN
                            </th>
                            <th>
                                Registration Date
                            </th>
                            
                        </tr>
                        <tr class="t">
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
                                Address
                            </th>
                            <th>
                                Country
                            </th>
                            <th>
                                State
                            </th>
                            <th>
                               City
                            </th>
                            
                        </tr>
                        <tr class="t">
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
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                Pincode
                            </th>
                            <th>
                                Sector
                            </th>
                            <th>
                               MarketCap
                            </th>
                            <th>
                               Active
                            </th>
                            <th>
                                Delete
                           </th>
                        </tr>
                        <tr class="t">
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
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center " colspan="4">
                                <asp:Button ID="Button1" runat="server" Text="Blcok" CssClass="btn btn-warning btn-lg f1" />
                                <asp:Button ID="Button2" runat="server" Text="Delect" CssClass="btn btn-danger btn-lg f1" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
