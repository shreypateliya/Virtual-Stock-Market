<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chartdemo.aspx.cs" Inherits="VSM.chartdemo" %>

<%@ Import Namespace="VSM.Class" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
            google.charts.load('current', { 'packages': ['corechart'] });
            google.charts.setOnLoadCallback(drawchart)

        <%
        connection con = new connection();
        String qs = "select * from Test";
        SqlCommand cmd = new SqlCommand(qs, con.con);
        con.open();
        SqlDataReader dr = cmd.ExecuteReader();
        string data = "";
        while (dr.Read())
        {
            data += "[" + dr.GetValue(0).ToString() + "," + dr.GetValue(1).ToString() + "],";
        }
        con.close();
        %>

        function drawchart() {
            var data = new google.visualization.DataTable();
            data.addColumn('number', 'x');
            data.addColumn('number', 'y');
            data.addRows([<%= data %>]);
            console.table(<%= data %>)
            var option = {
                'title': 'test Data',
                'height': 600,
                'width': 600
            };
            var chart = new google.visualization.LineChart(document.getElementById('chart'));
            chart.draw(data, option);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div id="chart">
            
        </div>
    </form>
</body>
</html>
