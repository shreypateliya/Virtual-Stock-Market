<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication3.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/form.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/gog.css" rel="stylesheet" type="text/css" />
    <style>
        .btn1
        {
            transform: rotate(90deg);
            position: fixed;
            top:100px;
            left:-40px;
        }
        .z1
        {
            z-index: 0;
        }
        .z2
        {
            z-index:1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <button class="navbar-toggler ml-0" type="button" data-toggle="collapse" data-target="#mymenu"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <img class="log" src="images/chart.png"  width="70px" height="70px" />
        
        <div class="collapse navbar-collapse mx-3 anyclass" id="mymenu">
            <ul class="navbar-nav">
                <li class="nav-item active mt-2"><a class="nav-link" href="#">Market Activity</a></li>
                <li class="nav-item active mt-2"><a class="nav-link" href="#">IPO</a> </li>
                <li class="nav-item active mt-2"><a class="nav-link" href="#">News/Suggestion</a>
                </li>
                <li class="nav-item active mt-2"><a class="nav-link" href="#">About Us</a> </li>
                <li class="nav-item active mt-2"><a class="nav-link" href="#">Contact Us</a> </li>
                <li class="nav-item active mt-3 ml-3">
                    <button type="button" class="btn btn-secondary collapse">
                        SEARCH</button>
                </li>
            </ul>
            
             

        </div>-->
    <!--EXTRA-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mh-100 fixed-top">
        <button class="navbar-toggler toggle-btn" type="button" data-target="#sidebar" onclick="togglesidebar()">
            <span class="navbar-toggler-icon"></span><span class="navbar-toggler-icon"></span>
            <span class="navbar-toggler-icon"></span>
        </button>
        <img class="img" src="images/chart.png" />
        <a href="#" class="navbar-brand">VSM</a>
        <div class="collapse navbar-collapse navbar-light" id="navabarMenu">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="#">Market Activity</a></li>
                <li class="nav-item"><a class="nav-link" href="#">IPO</a> </li>
                <li class="nav-item"><a class="nav-link" href="#">News/Suggestion</a></li>
                <li class="nav-item"><a class="nav-link" href="#">About Us</a> </li>
                <li class="nav-item"><a class="nav-link" href="#">Contact Us</a> </li>
            </ul>
            <div class="text-left">
                <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#m1">
                    LOGIN</button>
                <button type="button" class="btn btn-secondary text-left" data-toggle="modal" data-target="#m2">
                    REGISTRATION
                </button>
            </div>
        </div>
    </nav>
    <div id="sidebar" class="z2">
        <ul class="">
            <li><a class="nav-link text-secondary" href="#">Home</a></li>
            <li><a  class="nav-link text-secondary" href="#">Contact US</a></li>
            <li><a class="nav-link text-secondary" href="#">About US</li>
            <li><a class="nav-link text-secondary" href="#">Market Activity</a></li>
            <li><a  class="nav-link text-secondary" href="#">IPO</a> </li>
            <li><a class="nav-link text-secondary" href="#">News/Suggestion</a></li>
            <li><a class="nav-link text-secondary" href="#">About Us</a> </li>
            <li><a  class="nav-link text-secondary" href="#">Contact Us</a> </li>
            <li>
                <button type="button" class="btn btn-secondary  pr-5" data-toggle="modal" data-target="#m1">
                    LOGIN</button></li>
            <li>
                <button type="button" class="btn btn-secondary text-left" data-toggle="modal" data-target="#m2">
                    REGISTRATION
                </button>
            </li>
        </ul>
    </div>
    <!--COM-->
    <div class=" ">
        <div class="modal trans" tabindex="-1" role="dialog" id="m1" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">
                            LOGIN</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <asp:TextBox ID="txtlg" runat="server" CssClass="t1 form-control  lg mt-2" required="true"></asp:TextBox>
                            <span class="l1 llg">LOGIN</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtpwd1" runat="server" CssClass="t1 form-control  pw1" required="true"></asp:TextBox>
                            <span class="l1 lpw1">PASSWORD</span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnsub" runat="server" Text="Submit" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=" ">
        <div class="modal" tabindex="-1" role="dialog" id="m2" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">
                            USER REGISTER</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class=" text-center mb-5">
                            <input type="button" class="btn btn-primary" name="r1" data-toggle="modal" data-target="#m2"
                                data-dismiss="modal" disabled value="USER">
                            <input type="button" class="ml-2 btn btn-primary" name="r1 " data-toggle="modal"
                                data-target="#m3" data-dismiss="modal" value="COMPANY">
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtfn" runat="server" CssClass="t1 form-control fn mt-2" required="true"></asp:TextBox>
                            <span class="l1 lfn">First Name</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtmn" runat="server" CssClass="t1 form-control  mn" required="true"></asp:TextBox>
                            <span class="l1 lmn">Middle name</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtln" runat="server" CssClass="t1 form-control  ln mt-2" required="true"></asp:TextBox>
                            <span class="l1 lln">Last Name</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtem" runat="server" CssClass="t1 form-control  em1" required="true"></asp:TextBox>
                            <span class="l1 lem1">Email</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtbd" runat="server" CssClass="t1 form-control  bt" required="true"
                                SelectedDate="1/1/2020" TextMode="Date"></asp:TextBox>
                            <span class="lrg">BirthDate</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtp" runat="server" CssClass="t1 form-control pw2" required="true"></asp:TextBox>
                            <span class="l1 lpw2">Password</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtcpw" runat="server" CssClass="t1 form-control cpw1" required="true"></asp:TextBox>
                            <span class="l1 lcpw1">Confirm Password</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txta" runat="server" CssClass="t1 form-control  ad1" required="true"
                                TextMode="MultiLine"></asp:TextBox>
                            <span class="l1 lad1">Address</span>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="dropcon" runat="server" CssClass="t1 form-control con1" required="true">
                            </asp:DropDownList>
                            <span class="l1 lcon1">Country</span>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="dropst" runat="server" CssClass="t1 form-control st1" required="true">
                            </asp:DropDownList>
                            <span class="l1 lst1">State</span>
                        </div>
                        <div class="for-group">
                            <asp:DropDownList ID="dropci" runat="server" class="t1  form-control ct1" required="true">
                            </asp:DropDownList>
                            <span class="l1 lct1">City</span>
                        </div>
                        <div class="form-group">
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="t1 form-control im" required="true" />
                            <span class="lrg">Image</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtph" runat="server" CssClass="t1 form-control ph" required="true">
                            </asp:TextBox>
                            <span class="l1 lph">Phone Number</span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">
                            Submit</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">
                            Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=" ">
        <div class="modal" tabindex="-1" role="dialog" id="m3" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">
                            COMPANY REGISTER</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class=" text-center mb-5">
                            <input type="button" class="btn btn-primary" name="r1" data-toggle="modal" data-target="#m2"
                                data-dismiss="modal" value="USER">
                            <input type="button" class="ml-2 btn btn-primary" name="r1" data-toggle="modal" data-target="#m3"
                                data-dismiss="modal" disabled value="COMPANY">
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtcn" CssClass="t1 form-control n mt-2" runat="server" required="true"></asp:TextBox>
                            <span class="l1 lnn">Company Name</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtcon" runat="server" CssClass="t1 form-control  cn" required="true"></asp:TextBox>
                            <span class="l1 lcn">Contact Number</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtcp" runat="server" CssClass="t1 form-control  cp" required="true"></asp:TextBox>
                            <span class="l1  lcp">Contact Person</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtlem" runat="server" CssClass="t1 form-control  em2" required="true"></asp:TextBox>
                            <span class="l1 lem2">Email</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="t1 form-control  gs" required="true"></asp:TextBox>
                            <span class="l1 lgs">GST Number</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtcin" CssClass="t1 form-control cin" required="true" runat="server"></asp:TextBox>
                            <span class="l1 lcin">CIN</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtrdt" runat="server" CssClass="t1 form-control  rg" required="true"
                                TextMode="Date">
                            </asp:TextBox>
                            <span class="lrg">Registration Date</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtpw" runat="server" CssClass="t1 form-control pw3" required="true"
                                TextMode="Password"></asp:TextBox>
                            <span class="l1 lpw3">Password</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtcw" runat="server" CssClass="t1 form-control cpw2" required="true"
                                TextMode="Password"></asp:TextBox>
                            <span class="l1 lcpw2">Confirm Password</span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtad" runat="server" CssClass="t1 form-control  ad2" required="true"
                                TextMode="MultiLine"></asp:TextBox>
                            <span class="l1 lad2">Address</span>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="dropCountry" runat="server" required="true" CssClass="t1 form-control con2">
                            </asp:DropDownList>
                            <span class="l1 lcon2">Country</span>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="dropState" runat="server" CssClass="t1 form-control st2" required="true">
                            </asp:DropDownList>
                            <span class="l1 lst2">State</span>
                        </div>
                        <div class="for-group">
                            <asp:DropDownList ID="dropCity" runat="server" CssClass="t1 ct form-control ct2"
                                required="true">
                            </asp:DropDownList>
                            <span class="l1 lct2">City</span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="collapse" id="search">
        <ul>
            <li></li>
        </ul>
    </div>
    <script type="text/javascript">
        function togglesidebar() {
            document.getElementById("sidebar").classList.toggle('active');
        }
    </script>
    <script src="bootstrap-4.4.1-dist/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
    <script src="bootstrap-4.4.1-dist/js/bootstrap.bundle.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="scrollbar" id="style-2">
        <div class="force-overflow">
        </div>
    </div>
    <button type="button" class=" btn1 btn btn-info  ml-1  z1" data-toggle="modal" data-target="#exampleModal">
        FEEDBACK</button>
    <div class="modal" tabindex="-1" role="dialog" id="exampleModal" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">
                        FEEDBACK</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Feedback here" TextMode="MultiLine" CssClass="ta" Rows="6"></asp:TextBox>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="btn btn-primary"
                        data-dismiss="modal" />
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                        Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <footer class="page-footer font-small blue  pt-1 mh-100 fback fixed-bottom z1">
        <div class="container">
            <div class="row">
                <div class="col col-lg-4 col-md-4 col-sm-12">
                    <img class="img-responsive" src="images/email.png" width="30px" height="30px">
                    <a href="https://mail.google.com/" target="_blank" class="text text-light">abc@VSM.com</a>
                </div>
                <div class="col col-lg-4 col-md-4 col-sm-12">
                    <label class="font-weight-bold text-light">
                    POPULAR LINKS</lable>
                </div>
                <div class="col col-lg-4 col-md-4 col-sm-12">
                    <label class="font-weight-bold text-light">
                        PLATFORM INFO</label>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col col-lg-4 col-md-4 col-sm-12">
                    <img class="img-responsive img5" src="images/call.png" width="30px" height="30px">
                    <label class="text text-light  txt3">
                        +1234567890</label>
                </div>
                <div class="col col-lg-4 col-md-4 col-sm-12">
                    <a href="#" class="text-light txt">CAREERS</a><br>
                    <a href="#" class="text-light txt">ADVERTISE</a><br>
                    <a href="#" class="text-light">MARKETSITE</a><br>
                    <a href="#" class="text-light">SITEMAP</a><br>
                </div>
                <div class="col col-lg-4 col-md-4 col-sm-12">
                    <a href="#" class="text-light">About US</a></br> <a href="#" class="text-light">CONTACT
                        US</a></br> <a href="#" class="text-light">HISTORY</a></br>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col col-lg-4 col-md-4 col-sm-12">
                    <img class="img-responsive" src="images/pin.png" width="30px" height="30px">
                    <label class="text text-light">
                        Vadodara<br>
                        Gujarat,India</label>
                </div>
                <div class="col col-lg-4 col-md-4 col-sm-12">
                    <a href="#" class="text-light txt">PRIVACY</a><br>
                    <a href="#" class="text-light txt">COOKIES</a><br>
                    <a href="#" class="text-light txt">LEGAL</a><br>
                </div>
                <div class="col col-lg-4 col-md-4 col-sm-12">
                    <label class="text-light font-weight-bold">
                        Follow US</label><br>
                    <a href="https://www.facebook.com/" target="_blank">
                        <img class="img-responsive mr-1 mb-1" src="images/facebook.png" width="30px" height="30px"></a>
                    <a href="#">
                        <img class="img-responsive mr-1 mb-1" src="images/instagram-sketched.png" width="30px"
                            height="30px"></a> <a href="#">
                                <img class="img-responsive mr-1 mb-1" src="images/2392489.png" width="30px" height="30px"></a>
                    <a href="#">
                        <img class="img-responsive mr-1 mb-1" src="images/twitter.png" width="30px" height="30px"></a>
                </div>
            </div>
        </div>
        <hr>
        <center><img class="img-responsive" src="images/chart.png" height="70px" width="70px"><label class="text-light font-weight-bold">© 2020,VSM, Inc. All Rights Reserved.</label></center>
    </footer>
    </label>
</asp:Content>
