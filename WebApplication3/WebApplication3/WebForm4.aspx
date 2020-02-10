<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication3.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/admin.css" rel="stylesheet" type="text/css" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-md   navbar-light">
        <button class="navbar-toggler ml-auto mb-2 bg-light" type="button" data-toggle="collapse"
            data-target="#m1">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="m1">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-2 col-lg-3 col-md-4 sidebar fixed-top bg-white">
                        <a href="#" class="navbar-brand text-secondary d-block mx-auto text-center py-3 mb-4 bb">
                            VSM</a>
                        <div class="bottom-border pb-3 bb">
                            <img src="images/twitter.png" width="50" class="rounded-circle" />
                            <a href="" class="text-dark">shikhar shah</a>
                        </div>
                        <div id="demo">
                        </div>
                        <ul class="navbar-nav flex-column mt-4">
                            <li class="nav-item" onclick="loadDoc()"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                                <i class="fa fa-home text-secondary fa-lg mr-3"></i>Dashbord</a></li>
                            <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                                <i class="fa fa-home text-secondary fa-lg mr-3"></i>Dashbord</a></li>
                            <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                                <i class="fa fa-home text-secondary fa-lg mr-3"></i>Dashbord</a></li>
                            <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                                <i class="fa fa-home text-secondary fa-lg mr-3"></i>Dashbord</a></li>
                            <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                                <i class="fa fa-home text-secondary fa-lg mr-3"></i>Dashbord</a></li>
                            <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                                <i class="fa fa-home text-secondary fa-lg mr-3"></i>Dashbord</a></li>
                            <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                                <i class="fa fa-home text-secondary fa-lg mr-3"></i>Dashbord</a></li>
                            <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                                <i class="fa fa-home text-secondary fa-lg mr-3"></i>Dashbord</a></li>
                            <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                                <i class="fa fa-home text-secondary fa-lg mr-3"></i>Dashbord</a></li>
                        </ul>
                        <div class="col-xl-10 col-lg-9 col-md-8 ml-auto bg-dark fixed-top py-2 top-navbar">
                            <div class="row align-items-center">
                                <div class="col-md-4">
                                    <h4 class="text-light text-uppercaes mb-0">
                                        Dashbord
                                    </h4>
                                </div>
                                <div class="col-md-5">
                                    <form>
                                    <div class="input-group">
                                        <input type="text" class="form-control mt-3 search-input text-white" placeholder="Search">
                                        <button type="button" class="btn btn-white mt-3 search-button">
                                            <i class="fa fa-search text-danger"></i>
                                        </button>
                                    </div>
                                    </form>
                                </div>
                                <div class="col-md-3">
                                    <ul class="navbar-nav">
                                        <li class="nav-item icon-parent"><a href="#" class="nav-link icon-bullet "><i class="fa fa-comments text-muted fa-lg ">
                                        </i></a></li>
                                        <li class="nav-item icon-parent"><a href="#" class="nav-link icon-bullet"><i class="fa fa-bell text-muted fa-lg">
                                        </i></a></li>
                                        <li class="nav-item ml-md-auto"><a href="#" class="nav-link"><i class="fa fa-sign-out text-danger fa-lg">
                                        </i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-9 col-xl-10 col-md-8 ml-auto">
                    <div class="row pt-md-5 mt-md-3 mb-5">
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card card-comman bg-secondary">
                                <div class="card-body stretched-link">
                                    <div class="d-flex justify-content-between">
                                        <i class="fa fa-user fa-3x text-warning"></i>
                                        <div class="text-right">
                                            <h5>
                                                USER MANAGEMENT</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="class-footer text">
                                    <i class=" fa fa-sync"></i><span>Update</span> <a href="https://www.youtube.com/watch?v=XK-H0kQW54Y&t=4374s"
                                        class="stretched-link"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card card-comman bg-primary">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <i class="fa fa-bullhorn fa-3x text-warning"></i>
                                        <div class="text-right">
                                            <h5>
                                                ADVERTISEMENT</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="class-footer text">
                                    <i class=" fa fa-sync"></i><span>Update</span> <a href="#" class="stretched-link">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card card-comman bg-danger">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <i class="fa fa-building fa-3x text-warning"></i>
                                        <div class="text-right">
                                            <h5>
                                                COMPANY</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="class-footer text">
                                    <i class=" fa fa-sync"></i><span>Update</span> <a href="#" class="stretched-link">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card card-comman bg-info">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <img src="images/Stock_market.png" height="45" class="text-warning">
                                        <div class="text-right">
                                            <h5>
                                                SHARE MANAGEMENT</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="class-footer text">
                                    <i class=" fa fa-sync"></i><span>Update</span> <a href="#" class="stretched-link">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-10 col-lg-9 col-md-8 ml-auto">
                    <div class="row align-items-center">
                        <div class="col-12 col-xl-6 mb-4 mb-xl-0">
                            <h3 class="text-muted text-center">
                                User Table</h3>
                            <table class=" table bg-light text-center">
                                <thead class="text-dark">
                                    <tr>
                                        <th>
                                            1
                                        </th>
                                        <th>
                                            2
                                        </th>
                                        <th>
                                            3
                                        </th>
                                        <th>
                                            4
                                        </th>
                                        <th>
                                            5
                                        </th>
                                        <th>
                                            6
                                        </th>
                                    </tr>
                                </thead>
                                <tbody class="bg-light">
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            4
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            6
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            4
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            6
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            4
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            6
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            4
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            6
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            4
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            6
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            4
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            6
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-xl-6 col-12">
                            <h3 class="text-muted text-center">
                                User Table</h3>
                            <table class=" table bg-light text-center">
                                <thead class="text-dark">
                                    <tr>
                                        <th>
                                            1
                                        </th>
                                        <th>
                                            2
                                        </th>
                                        <th>
                                            3
                                        </th>
                                        <th>
                                            4
                                        </th>
                                        <th>
                                            5
                                        </th>
                                        <th>
                                            6
                                        </th>
                                    </tr>
                                </thead>
                                <tbody class="bg-light">
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            4
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            6
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            4
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            6
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            4
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            6
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            4
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            6
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            4
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            6
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            4
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            6
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script type="text/javascript">
        function loadDoc() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("demo").innerHTML =
                this.responseText;
                }
            };
            xhttp.open("GET", "WebForm4.aspx", true);
            xhttp.send();
        }
    </script>
    <script src="bootstrap-4.4.1-dist/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
    <script src="bootstrap-4.4.1-dist/js/bootstrap.bundle.js" type="text/javascript"></script>
</body>
</html>
