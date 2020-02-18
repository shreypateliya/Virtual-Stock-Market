<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="ShareDetails.aspx.cs" Inherits="VSM.WebForm1" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="VSM.Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <% String ShareId = Request.QueryString["ID"]; %>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        var quot = "";
        function ReadFile(id) {
            var req = new XMLHttpRequest();
            req.overrideMimeType("application/json");
            req.open("GET", "Quotations/" + id + ".json", true);
            req.onreadystatechange = function () {
                if (req.readyState === 4 && req.status == "200") {
                    quot = JSON.parse(req.responseText);
                }
            }
            req.send();
        }
        var id = <%= (ShareId) %>
            ReadFile(id);
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawchart)

        function map(x, rh, rl, mh, ml) {
            return x * (mh - ml) / (rh - rl);
        }

        function drawchart() {
            var data = new google.visualization.DataTable();
            data.addColumn("number", "Time");
            data.addColumn("number", "volume");
            data.addColumn("number", "price")
            name = quot.name;
            for (var i = 0; i < quot.quote.length; i++) {
                var vol = map(quot.quote[i].Volume, 0, 20000, 0, 50);
                data.addRows([[quot.quote[i].time, vol, quot.quote[i].price]]);
            }
            var option = {
                'title': name,
                'height': 400
            };
            var chart = new google.visualization.LineChart(document.getElementById('chart'));
            chart.draw(data, option);
        }
    </script>

    <style type="text/css">
        .table th {
            border-top: none;
        }

        #chart {
            position: relative;
            width: 100%;

        }
        .chart-div{
            padding: 0px;
            background: white;
            border: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                        <asp:Label ID="lblName" runat="server" Text="Label">Share Name</asp:Label>
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
                                        Id:
                                    </p>
                                    <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
                                    <div class="col-lg-6
        col-sm-6 col-md-6 d-flex justify-content-left">
                                        <p class="text-secondary">
                                            Secotor:
                                        </p>
                                        <asp:Label ID="lblSector" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-7 col-sm-12">
                    <div class="card card-comman mt-5 bg-white chart-div">
                        <div class="card-body text-secondary chart-div">
                            <div id="chart">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5
        col-sm-12">
                    <div class="card card-comman mt-5 bg-dark">
                        <div class="card-header">
                            <h3 class="text-white">Share Details</h3>
                        </div>
                        <div class="card-body bg-white">
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">Symbol
                                                </th>
                                                <th scope="col">price
                                                </th>
                                                <th scope="col">company Name
                                                </th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblSymbol" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <td>
                                                    <span>&#8377;
                                                        <script> document.write(quot.quote[quot.quote.length - 1].price.toFixed(2))</script>
                                                    </span>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblComapny" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <td>
                                            </tr>
                                        </tbody>
                                        <thead>
                                            <tr>
                                                <th scope="col">High
                                                </th>
                                                <th scope="col">low
                                                </th>
                                                <th scope="col">Change
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <span></span>
                                                </td>
                                                <td>
                                                    <span></span>
                                                </td>
                                                <td>
                                                    <span id="change">
                                                        <script>
                                                            var color = "black";
                                                            change = quot.quote[quot.quote.length - 1].price - quot.quote[quot.quote.length - 2].price;
                                                            if (change < 0) {
                                                                color = "red";
                                                                sign = "";
                                                            }
                                                            else {
                                                                color = "green"
                                                                sign = "+";
                                                            }
                                                            var cdisp = document.getElementById("change");
                                                            cdisp.style.color = color;
                                                            document.write(sign + change.toFixed(2));
                                                        </script>
                                                    </span>
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
                            <h1 class="text-info">Company Name</h1>
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
                                                <h4 class="">GST NO.</h4>
                                                <asp:Label ID="lblGst" runat="server" Text="Label" CssClass=""></asp:Label>
                                            </td>
                                            <td>
                                                <h4 class="">Registration No.
                                                </h4>
                                                <asp:Label ID="lblRegDt" runat="server" Text="Label" CssClass=""></asp:Label>
                                            </td>
                                            <td>
                                                <h4 class="">Market Capital
                                                </h4>
                                                <asp:Label ID="lblMarkCap" runat="server" Text="Label" CssClass=""></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h4 class="">CIN NO.
                                                </h4>
                                                <asp:Label ID="lblCIN" runat="server" Text="Label" CssClass=""></asp:Label>
                                            </td>
                                            <td>
                                                <h4 class="">Sector
                                                </h4>
                                                <asp:Label ID="lblSec2" runat="server" Text="Label" CssClass=""></asp:Label>
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
                                                        <h4>Contact Number</h4>
                                                        <asp:Label ID="lblContact" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <h4>Contact Person</h4>
                                                        <asp:Label ID="lblPerson" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h4>Email</h4>
                                                        <asp:Label ID="lblMail" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <h4>Address</h4>
                                                        <asp:Label ID="lblAdd" runat="server" Text="Label"></asp:Label>
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

        <script src="bootstrap-4.4.1-dist/js/jquery.js" type="text/javascript"></script>
        <script src="bootstrap-4.4.1-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#main a").click(function (e) {
                    e.preventDefault();
                    $(this).tab('show');
                });
            });
            $(window).resize(function () {
                drawchart();
            });
        </script>
</asp:Content>
