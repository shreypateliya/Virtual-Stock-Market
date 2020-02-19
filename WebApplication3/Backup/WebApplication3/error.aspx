<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="WebApplication3.WebForm12" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .ic
        {
            border-radius: 200px;
            padding: 10px;
        }
    </style>
    <link href="bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <form id="form1" runat="server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 d-flex justify-content-center mt-5">
                <i class="fa fa-exclamation text-danger fa-3x bg-dark rounded-circle py-2 px-4 float-left">
                </i>
                <h4 class="text-danger ml-1 fa-3x ">
                    Opps error has occured
                </h4>
            </div>
        </div>
        <center><asp:Button ID="Button1" runat="server" Text="Go back to Home Page" class="btn btn-primary mt-5"
            PostBackUrl="~/WebForm1.aspx" /></center>
    </div>
    </form>
</body>
</html>
