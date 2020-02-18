<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="WebApplication3.WebForm8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/payment.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/user.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
    <script src="bootstrap-4.4.1-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#main a").click(function (e) {
                e.preventDefault();
                $(this).tab('show');
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="card card-com">
                <div class="card-header">
                    <h2>
                        Payment Options</h2>
                    <ul class="nav nav-tabs card-header-tabs" id="main">
                        <li class="nav-item"><a href="#payment" class="nav-link active">Debit Card</a></li>
                        <li class="nav-item"><a href="#credit" class="nav-link ">Credit Card</a></li>
                        <li class="nav-item"><a href="#upi" class="nav-link">UPI</a></li>
                        <li class="nav-item"><a href="#ewallet" class="nav-link">E-Wallet</a></li>
                    </ul>
                </div>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="payment">
                        <div class="card-body">
                            <div class="col-lg-6 col-sm-6 col-md-6 mt-4">
                                <i class="fa fa-cc-mastercard text-info sp mr-1" aria-hidden="true"></i><i class="fa fa-cc-visa text-info sp"
                                    aria-hidden="true"></i><span class="">Card Number</span>
                                <asp:TextBox ID="txtcn1" runat="server" CssClass="t mb-2"></asp:TextBox>
                                <i class="fa fa-user text-info sp mr-1" aria-hidden="true"></i><span class="sp">Cardholder
                                    Name</span>
                                <asp:TextBox ID="tctch" runat="server" CssClass="t"></asp:TextBox>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <asp:DropDownList ID="Dropmm" CssClass="t " runat="server">
                                    <asp:ListItem>mm</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="Dropyear" CssClass="t ml-2" runat="server">
                                    <asp:ListItem>yy</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-2 mt-2">
                                <i class="fa fa-cvv mr-1" aria-hidden="true"></i><span class="">cvv</span>
                                <asp:TextBox ID="txtcvv" CssClass="t" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="card-footer">
                        </div>
                    </div>
                    <div class="tab-pane fade" id="credit">
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
                                <asp:DropDownList ID="DropDownList1" CssClass="t ml-2" runat="server">
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-2 mt-2">
                                <asp:TextBox ID="TextBox1" CssClass="t" runat="server" Text="cvv"></asp:TextBox>
                            </div>
                        </div>
                        <div class="card-footer">
                        </div>
                    </div>
                    <div class="tab-pane fade" id="ewallet">
                        <div class="card-body">
                            <div class="col-lg-6 col-sm-6 col-md-6 mt-4">
                                <i class="fa fa-money sp" aria-hidden="true"></i><span class="sp">UPI</span>
                                <asp:TextBox ID="txtupi" runat="server" CssClass="t mb-2"></asp:TextBox>
                                <i class="fa fa-key sp" aria-hidden="true"></i><span class="sp">Password</span>
                                <asp:TextBox ID="txtpw" runat="server" CssClass="t" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="card-footer">
                        </div>
                    </div>
                    <div class="tab-pane fade" id="upi">
                        <div class="card-body">
                            <div class="col-lg-6 col-sm-6 col-md-6 mt-4">
                                <i class="fa fa-key" aria-hidden="true"></i><span class="sp">Password</span>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="t" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="card-footer">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
