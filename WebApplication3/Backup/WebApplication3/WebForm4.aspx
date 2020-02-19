<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication3.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
        /*
    DEMO STYLE
*/@import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";
        body
        {
            font-family: 'Poppins' , sans-serif;
            background: #fafafa;
        }
        p
        {
            font-family: 'Poppins' , sans-serif;
            font-size: 1.1em;
            font-weight: 300;
            line-height: 1.7em;
            color: #999;
        }
        a, a:hover, a:focus
        {
            color: inherit;
            text-decoration: none;
            transition: all 0.3s;
        }
        .navbar
        {
            padding: 15px 10px;
            background: #fff;
            border: none;
            border-radius: 0;
            margin-bottom: 40px;
            box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
        }
        .navbar-btn
        {
            box-shadow: none;
            outline: none !important;
            border: none;
        }
        .line
        {
            width: 100%;
            height: 1px;
            border-bottom: 1px dashed #ddd;
            margin: 40px 0;
        }
        /* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */.wrapper
        {
            display: flex;
            width: 100%;
            align-items: stretch;
        }
        #sidebar
        {
            min-width: 250px;
            max-width: 250px;
            background: #7386D5;
            color: #fff;
            transition: all 0.3s;
        }
        #sidebar.active
        {
            margin-left: -250px;
        }
        #sidebar .sidebar-header
        {
            padding: 20px;
            background: #6d7fcc;
        }
        #sidebar ul.components
        {
            padding: 20px 0;
            border-bottom: 1px solid #47748b;
        }
        #sidebar ul p
        {
            color: #fff;
            padding: 10px;
        }
        #sidebar ul li a
        {
            padding: 10px;
            font-size: 1.1em;
            display: block;
        }
        #sidebar ul li a:hover
        {
            color: #7386D5;
            background: #fff;
        }
        #sidebar ul li.active > a, a[aria-expanded="true"]
        {
            color: #fff;
            background: #6d7fcc;
        }
        a[data-toggle="collapse"]
        {
            position: relative;
        }
        .dropdown-toggle::after
        {
            display: block;
            position: absolute;
            top: 50%;
            right: 20px;
            transform: translateY(-50%);
        }
        ul ul a
        {
            font-size: 0.9em !important;
            padding-left: 30px !important;
            background: #6d7fcc;
        }
        ul.CTAs
        {
            padding: 20px;
        }
        ul.CTAs a
        {
            text-align: center;
            font-size: 0.9em !important;
            display: block;
            border-radius: 5px;
            margin-bottom: 5px;
        }
        a.download
        {
            background: #fff;
            color: #7386D5;
        }
        a.article, a.article:hover
        {
            background: #6d7fcc !important;
            color: #fff !important;
        }
        /* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */#content
        {
            width: 100%;
            padding: 20px;
            min-height: 100vh;
            transition: all 0.3s;
        }
        /* ---------------------------------------------------
    MEDIAQUERIES
----------------------------------------------------- */@media (max-width: 768px)
        {
            #sidebar
            {
                margin-left: -250px;
            }
            #sidebar.active
            {
                margin-left: 0;
            }
            #sidebarCollapse span
            {
                display: none;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="wrapper">
            <!-- Sidebar -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>
                        Dashbord</h3>
                    <hr />
                    <img src="images/twitter.png" width="50" class="rounded-circle" />
                    <a href="" class="text-dark">shikhar shah</a>
                </div>
                <ul class="list-unstyled components">
                    <li class="nav-item" onclick="loadDoc()"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                        <i class="fa fa-home text-secondary fa-lg mr-3"></i>Dashbord</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                        <i class="fa fa-home text-secondary fa-lg mr-3"></i>Manage Users</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                        <i class="fa fa-home text-secondary fa-lg mr-3"></i>Advertisement</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                        <i class="fa fa-home text-secondary fa-lg mr-3"></i>Company</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                        <i class="fa fa-home text-secondary fa-lg mr-3"></i>Manage Shares</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                        <i class="fa fa-home text-secondary fa-lg mr-3"></i>Feedback</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-dark p-3 mb-2 sidebar-link current">
                        <i class="fa fa-home text-secondary fa-lg mr-3"></i>Sales Monitor</a></li>
                </ul>
            </nav>
            <div id="content">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container">
                        <button type="button" id="sidebarCollapse" class="btn btn-info">
                            <i class="fa fa-bars"></i>
                        </button>
                        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fas fa-align-justify"></i>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
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
                        </div>
                    </div>
                </nav>
                <section>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-xl-10 col-md-8">
                        <div class="row pt-md-5 mt-md-3 mb-5">
                            <div class="col-xl-3 col-sm-6 p-2">
                                <div class="card card-comman bg-primary">
                                    <div class="card-body py-5">
                                        <div class="d-flex justify-content-between">
                                            <i class="fa fa-bullhorn fa-3x text-warning"></i>
                                            <div class="text-right">
                                                <h5>
                                                   MANAGE USERS
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="class-footer text">
                                        <a href="#" class="stretched-link"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-sm-6 p-2">
                                <div class="card card-comman bg-primary">
                                    <div class="card-body py-5">
                                        <div class="d-flex justify-content-between">
                                            <i class="fa fa-bullhorn fa-3x text-warning"></i>
                                            <div class="text-right">
                                                <h5>
                                                    ADVERTISEMENT
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="class-footer text">
                                        <a href="#" class="stretched-link"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-sm-6 p-2">
                                <div class="card card-comman bg-danger">
                                    <div class="card-body py-5">
                                        <div class="d-flex justify-content-between">
                                            <i class="fa fa-building fa-3x text-warning"></i>
                                            <div class="text-right">
                                                <h5>
                                                    COMPANY
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="class-footer text">
                                        <a href="#" class="stretched-link"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-sm-6 p-2">
                                <div class="card card-comman bg-info">
                                    <div class="card-body py-5">
                                        <div class="d-flex justify-content-between">
                                             <i class="fa fa-building fa-3x text-warning"></i>
                                            <div class="text-right">
                                                <h5>
                                                    MANAGE SHARE
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="class-footer text">
                                        <a href="#" class="stretched-link"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-sm-6 p-2">
                                <div class="card card-comman bg-info">
                                    <div class="card-body py-5">
                                        <div class="d-flex justify-content-between">
                                             <i class="fa fa-building fa-3x text-warning"></i>
                                            <div class="text-right">
                                                <h5>
                                                    SALES RECORD
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="class-footer text">
                                        <a href="#" class="stretched-link"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
            </div>
        </div>
    </div>
    </form>
    <script src="bootstrap-4.4.1-dist/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
    <script src="bootstrap-4.4.1-dist/js/bootstrap.bundle.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {

            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });


    </script>
</body>
</html>
