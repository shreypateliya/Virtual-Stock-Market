<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutshare.aspx.cs" Inherits="WebApplication3.aboutshare" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/user.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
    <script src="bootstrap-4.4.1-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#main a").click(function (e) {
                e.preventDefault();
                $(this).tab('show');
            });
        });
    </script>
    <style type="text/css">
        .table th
        {
            border-top: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12
        col-sm-12">
                    <div class="card card-comman mt-5">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-7 col-sm-7 col-md-7 d-flex justify-content-left">
                                    <h1 class="text-info">
                                        <asp:Label ID="Label3" runat="server" Text="Label">Share Name</asp:Label>
                                    </h1>
                                </div>
                                <div class="col-lg-5 col-sm-7 col-md-7 d-flex justify-content-left ml-auto">
                                    <asp:Button ID="Button3" runat="server" Text="BUY" CssClass="btn btn-success btn-lg
        ml-auto mr-3" />
                                    <asp:Button ID="Button4" runat="server" Text="SELL" CssClass="
        btn btn-primary btn-lg" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6
        col-sm-6 col-md-6 d-flex justify-content-left ">
                                    <p class="text-secondary">
                                        BSE:
                                    </p>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    <div class="col-lg-6
        col-sm-6 col-md-6 d-flex justify-content-left">
                                        <p class="text-secondary">
                                            Secotor:
                                        </p>
                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-7 col-sm-12">
                    <div class="card card-comman mt-5 bg-dark">
                        <div class="card-body text-secondary">
                            <img src="images/credit-card-form.jpg" class="a" />
                        </div>
                    </div>
                </div>
                <div class="col-lg-5
        col-sm-12">
                    <div class="card card-comman mt-5 bg-dark">
                        <div class="card-header">
                            <h3 class="text-white">
                                Share Details</h3>
                        </div>
                        <div class="card-body bg-white">
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">
                                                    Symbol
                                                </th>
                                                <th scope="col">
                                                    price
                                                </th>
                                                <th scope="col">
                                                    company Name
                                                </th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <td>
                                            </tr>
                                        </tbody>
                                        <thead>
                                            <tr>
                                                <th scope="col">
                                                    High
                                                </th>
                                                <th scope="col">
                                                    low
                                                </th>
                                                <th scope="col">
                                                    Change
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label18" runat="server" Text="Label" CssClass=" justify-content-left"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12
        col-sm-12">
                    <div class="card mt-5 ">
                        <div class="card-header bg-dark">
                            <h1 class="text-info">
                                Company Name</h1>
                            <ul class="nav nav-tabs card-header-tabs mt-3" id="main">
                                <li class="nav-item"><a href="#comp" class="nav-link active">Company Details</a></li>
                                <li class="nav-item"><a href="#detail" class="nav-link ">Contact Details</a></li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="comp">
                                <div class="card-body">
                                    <table class="table" style="border-color: White">
                                        <tr>
                                            <td rowspan="2">
                                                <asp:Image ID="Image1" runat="server" Width="200px" Height="200px" />
                                            </td>
                                            <td>
                                                <h4 class="">
                                                    GST NO.</h4>
                                                <asp:Label ID="Label14" runat="server" Text="Label" CssClass=""></asp:Label>
                                            </td>
                                            <td>
                                                <h4 class="">
                                                    Registration No.
                                                </h4>
                                                <asp:Label ID="Label10" runat="server" Text="Label" CssClass=""></asp:Label>
                                            </td>
                                            <td>
                                                <h4 class="">
                                                    Market Capital
                                                </h4>
                                                <asp:Label ID="Label20" runat="server" Text="Label" CssClass=""></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h4 class="">
                                                    CIN NO.
                                                </h4>
                                                <asp:Label ID="Label15" runat="server" Text="Label" CssClass=""></asp:Label>
                                            </td>
                                            <td>
                                                <h4 class="">
                                                    Sector
                                                </h4>
                                                <asp:Label ID="Label11" runat="server" Text="Label" CssClass=""></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="detail">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-lg-7 col-sm-12">
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14763.822387439515!2d73.209481!3d22.317519!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x738581dc828acb22!2sBadrikedar+Apartment!5e0!3m2!1sen!2sin!4v1523168099789"
                                                frameborder="0" style="border: 0" allowfullscreen class="h-100 w-100"></iframe>
                                        </div>
                                        <div class="col-lg-5 col-sm-12">
                                            <table class="table">
                                                <tr>
                                                    <td>
                                                        <h4>
                                                            Contact Number</h4>
                                                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <h4>
                                                            Contact Person</h4>
                                                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h4>
                                                            Email</h4>
                                                        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <h4>
                                                            Address</h4>
                                                        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
