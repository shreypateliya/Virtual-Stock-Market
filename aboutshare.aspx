<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutshare.aspx.cs" Inherits="WebApplication3.aboutshare" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/user.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <section>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-sm-12">
                        <div class="card card-comman mt-5 bg-dark">
                            <div class="card-body text-secondary">
                                <h1 class="text-primary">Share Name</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-12 mt-5 ml-3">
                        <asp:Button ID="Button3" runat="server" Text="BUY" CssClass="btn btn-success btn-lg " /><asp:Button
                            ID="Button4" runat="server" Text="SELL" CssClass=" btn btn-primary btn-lg  ml-3" />
                    </div>
                    <div class="col-lg-7 col-sm-12">
                        <div class="card card-comman mt-5 bg-dark">
                            <div class="card-body text-secondary">
                                <img src="images/credit-card-form.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-sm-12">
                        <div class="card card-comman mt-5 bg-dark">
                            <div class="card-header">
                                <h3 class="text-white">
                                    Share Details</h3>
                                <ul class="nav nav-tabs card-header-tabs ">
                                    <li class="nav-item ml-2"><a href="#" class="nav-link text-secondary">1</a></li>
                                    <li class="nav-item ml-5"><a href="#" class="nav-link text-secondary">2</a></li>
                                    <li class="nav-item ml-5"><a href="#" class="nav-link text-secondary">3</a></li>
                                    <li class="nav-item ml-5"><a href="#" class="nav-link active text-secondary">4</a></li>
                                </ul>
                            </div>
                            <div class="card-body text-secondary">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-7 col-sm-12">
                        <div class="card card-comman mt-5 bg-dark">
                            <div class="card-body text-secondary">
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>
        <section>
        </section>
    </div>
    </form>
</body>
</html>
