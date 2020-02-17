<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="ShareDetails.aspx.cs" Inherits="VSM.WebForm1" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="VSM.Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <% String ShareId = Request.QueryString["ID"]; %>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="bootstrap-4.4.1-dist/js/jquery.js" type="text/javascript"></script>
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

        $(window).resize(function () {
            drawchart();
        });
    </script>
    <style type="text/css">
        .ShareIndexContainer {
            position: relative;
            height: auto;
            width: auto;
        }

        .chart {
            position: absolute;
            height: 400px;
            width: 100%;
            min-width: 400px;
        }

        .chart-body {
            height: 400px;
            width: 55%;
        }

        .share-deets {
            position: relative;
            height: 400px;
            width: 45%;
            right: -55%;
            top: -400px;
            border: 1px solid beige;
            border-radius: 10px;
            padding: 10px;
        }
        .heading{
            font-size: 25px;
        }
        .heading-main{
            font-size: 33px;
        }
        .heading-sub{
            font-size: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <% String ShareId = Request.QueryString["ID"];
        connection con = new connection();%>
    <%  
        try
        {
            con.open();
            String qs = "select * from share where ShareId = '" + ShareId + "'";
            SqlCommand cmd = new SqlCommand(qs, con.Con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            String Symbol = dr.GetValue(2).ToString();
            String CompanyId = dr.GetValue(1).ToString();
            qs = "select * from Company where CompanyId='" + CompanyId + "'";
            dr.Close();
            cmd.CommandText = qs;
            SqlDataReader dr1 = cmd.ExecuteReader();
            dr1.Read();
            String CompanyName = dr1.GetValue(1).ToString();
            String Contact = dr1.GetValue(2).ToString();
            String person = dr1.GetValue(3).ToString();
            String Email = dr1.GetValue(4).ToString();
            String Image = dr1.GetValue(6).ToString();
            String gst = dr1.GetValue(7).ToString();
            String cin = dr1.GetValue(8).ToString();
            String reg = dr1.GetValue(9).ToString();
            String add = dr1.GetValue(10).ToString();
            String sectorid = dr1.GetValue(15).ToString();
            String marketCap = dr1.GetValue(16).ToString();

            qs = "select * from Sector where SectorId = '" + sectorid + "'";
            cmd.CommandText = qs;
            dr1.Close();
            SqlDataReader dr2 = cmd.ExecuteReader();
            dr2.Read();
            String sector = dr2.GetValue(1).ToString();
            dr2.Close();

    %>
    <div class="ShareIndexContainer">

        <div class="Shareinfo">

            <div class="chart-body">
                <div id="chart">
                </div>
            </div>
            <div class="share-deets">
                <span class="heading-main"><%= (Symbol) %></span>
                <span class="sub-heading"> <%=(CompanyName) %> </span>
                <hr />
                <span class="heading">
                    Price
                </span><br />
                <span class="content">
                    <script type="text/javascript">
                        document.write(quot.quote[quot.quote.length - 1].price.toFixed(2));
                    </script>
                </span>
            </div>
        </div>
    </div>
    <%}
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.close();
        } %>
</asp:Content>
