﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="credit.aspx.cs" Inherits="WebApplication3.WebForm9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/payment.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="card card-com">
              <div class="card-header">
                <h2>Payment Options</h2>
                <ul class="nav nav-tabs card-header-tabs">
                  <li class="nav-item"><a href="payment.aspx" class="nav-link">Debit Card</a></li>
                  <li class="nav-item"><a href="credit.aspx" class="nav-link active">Credit Card</a></li>
                  <li class="nav-item"><a href="upi.aspx" class="nav-link">UPI</a></li>
                  <li class="nav-item"><a href="ewallet.aspx" class="nav-link">E-Wallet</a></li>
                </ul>
              </div>
              <div class="card-body">
                    <div class="col-lg-6 col-sm-6 col-md-6 mt-4">
                      <i class="fa fa-cc-mastercard text-info sp mr-1" aria-hidden="true"></i><i class="fa fa-cc-visa text-info sp"
                            aria-hidden="true"></i><span class="">Card Number</span>
                        <asp:TextBox ID="txtcn" runat="server" CssClass="t mb-2"></asp:TextBox>
                        <i class="fa fa-user text-info sp mr-1" aria-hidden="true"></i><span class="sp">Cardholder
                            Name</span>
                        <asp:TextBox ID="txtch" runat="server" CssClass="t"></asp:TextBox>
                    </div>
                    <div class="col-lg-12 mt-2">
                     <asp:DropDownList ID="Dropmonth" CssClass="t " runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="Dropyear" CssClass="t ml-2" runat="server">
                        </asp:DropDownList>
                        

                    </div>
                    <div class="col-lg-2 mt-2">
                    <asp:TextBox ID="txtcvv" CssClass="t" runat="server" Text="cvv"></asp:TextBox>
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
