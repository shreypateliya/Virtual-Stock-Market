<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ewallet.aspx.cs" Inherits="WebApplication3.WebForm11" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/payment.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="card card-com">
              <div class="card-header">
                <h2>Payment Options</h2>
                <ul class="nav nav-tabs card-header-tabs">
                  <li class="nav-item"><a href="payment.aspx" class="nav-link ">Debit Card</a></li>
                  <li class="nav-item"><a href="credit.aspx" class="nav-link">Credit Card</a></li>
                  <li class="nav-item"><a href="upi.aspx" class="nav-link">UPI</a></li>
                  <li class="nav-item"><a href="ewallet.aspx" class="nav-link active">E-Wallet</a></li>
                </ul>
              </div>
              <div class="card-body">
                    <div class="col-lg-6 col-sm-6 col-md-6 mt-4">
                      <i class="fa fa-key" aria-hidden="true"></i>
                      <span class="sp">Password</span>
                      <asp:TextBox ID="txtpw" runat="server" CssClass="t" TextMode="Password"></asp:TextBox>
                    </div>
              </div>
              <div class="card-footer">
              </div>
            </div>
          </div>
        </div>
    </form>
</body>
</html>
