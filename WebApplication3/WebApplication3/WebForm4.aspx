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
        /* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */
        
        
        /*
    DEMO STYLE
*/@import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";
        body
        {
            font-family: 'Poppins' , sans-serif;
            background: #fafafa;
        }
        
        .navbar
        {
            padding: 15px 10px;
            background: #fff;
            border: none;
            
            margin-bottom: 40px;
            box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
        }
        .navbar-btn
        {
            box-shadow: none;
            
            border: none;
        }
        
        /* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */
.wrapper
        {
            display: flex;
            width: 100%;
            align-items: stretch;
        }
        #sidebar
        {
            min-width: 250px;
            max-width: 250px;
            background: white;
           
            transition: all 0.3s;
        }
        #sidebar.active
        {
            margin-left: -250px;
        }
        #sidebar .sidebar-header
        {
            padding: 20px;
            background: white;
            color:Black;
        }
        #sidebar ul.components
        {
            padding: 20px 0;
            border-bottom: 1px solid #47748b;
        }
       
        
        
        

        
        /* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */
#content
        {
            width: 100%;
            min-height: 100vh;
            transition: all 0.3s;
        }
        /* ---------------------------------------------------
    MEDIAQUERIES
----------------------------------------------------- */
@media (max-width: 768px)
        {
            #sidebar
            {
                margin-left:-250px;
                height:100vh
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
        .sidebar-link:hover
{

  background-color:#444;
  border-radius:5px;
}
.sidebar-link
{
  transition: 0.4s;
}
.bb
{
  border-bottom:  1px groove #eee;
}
.current:focus
{
  transition: 0.4s;
  background-color: grey;
  border-radius: 7px;
  box-shadow: 2px 5px 10px #111;
  transition:all .4s;
}



.search-input:focus{
  background:transparent;
  box-shadow:none;
  border-bottom:2px solid #dc3545;
  width:auto;
}

.search-button
{
  border-radius:50%;
  padding: 10px 16px;
  transition:all .4s;
}
.search-button:hover{
  background-color: #eee;
  transform:translateY(-1px);
}
.search-button:focus{
  background-color: #red;
  transform:translateY(-1px);
  box-shadow:1px 2px #ccc;
}
.icon-parent{
  position:relative;
}
.icon-bullet:after
{
  content:"";
  position:absolute;
  top:7px;
  height:12px;
  width:12px;
  background-color: #f44336;
  border-radius: 50%;
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
                <hr />
                <ul class="list-unstyled components ">
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
                <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                    <div class="container">
                        <button type="button" id="sidebarCollapse" class="btn btn-secondary mr-5">
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
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control mt-3 search-input text-white"
                                            placeholder="Search"></asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-white mt-3 search-button fa fa-search" />
                                    </div>
                                    </form>
                                </div>
                                <div class="col-md-3">
                                    <ul class="navbar-nav">
                                        <li class="nav-item icon-parent"><a href="#" class="nav-link icon-bullet "><i class="fa fa-comments text-muted fa-lg ">
                                        </i></a></li>
                                        <li class="nav-item icon-parent"><a href="#" class="nav-link icon-bullet"><i class="fa fa-bell text-muted fa-lg">
                                        </i></a></li>
                                        <li class="nav-item"><a href="#" class="nav-link"><i class="fa fa-sign-out text-danger fa-lg">
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
                            <div class="col-lg-12 col-xl-12 col-md-12 col-sm-12">
                                <div class="row pt-md-5 mt-md-3 mb-5">
                                    <div class="col-xl-3  col-sm-6 col-md-6 p-2">
                                        <div class="card card-comman bg-secondary">
                                            <div class="card-body py-5">
                                                <div class="d-flex justify-content-between">
                                                    <i class="fa fa-user fa-3x text-warning "></i>
                                                    <div class="text-right">
                                                        <h5>
                                                            USER MANAGEMENT
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
                                                    <img src="images/Stock_market.png" height="50" class="text-warning mb-1">
                                                    <div class="text-right">
                                                        <h5>
                                                            SHARE MANAGEMENT
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
    <script type="text/javascript">
        $(document).ready(function () {

            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });


    </script>
</body>
</html>
