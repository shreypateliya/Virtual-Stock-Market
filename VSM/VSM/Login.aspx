<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VSM.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .Imgmail {
            height: 15px;
            width: 13px;
            position: relative;
            top: -21px;
            left: -90px;
            transition: 0.4s;
        }
        .Imgpass {
            height: 15px;
            width: 13px;
            position: relative;
            top: -21px;
            left: -75px;
            transition: 0.4s;
        }

        .mail {
        }

        .pass {
        }

        * {
            font-family: Poppins-Regular,sans-serif;
        }

        body {
            background: linear-gradient(56deg, rgba(2,0,36,1) 0%, rgba(0,241,255,1) 0%, rgba(50,122,251,1) 26%, rgba(227,35,236,1) 100%);
        }

        h1 {
            color: rgba(50,122,251,1);
        }

        .container {
            background: #EFEFEF;
            border-radius: 15px;
            text-align: center;
            margin: 150px auto;
            height: 440px;
            width: 340px;
            padding-top: 0px;
        }

        .txt {
            border: none;
            border-bottom: 1.5px solid grey;
            padding: 0.5rem 0;
            outline: none;
            width: 250px;
            color: black;
            font-size: 16px;
            background: none;
        }

        .label {
            position: relative;
            top: -22px;
            transition: 0.4s;
        }

        .lmail {
            left: -90px;
            top: -22px;
        }

        .lpass {
            left: -75px;
            top: -22px;
        }

        .txt:focus, .txt:hover {
            border-bottom: 1.5px solid blue;
        }

        .mail:focus ~ .lmail, .mail:valid ~ .lmail, .lmail:active, .pass:focus ~ .lpass, .pass:valid ~ .lpass {
            top: -54px;
        }

        .mail:valid ~ .Imgmail, .mail:focus ~ .Imgmail, .pass:valid ~ .Imgpass, .pass:focus ~ .Imgpass {
            top: -53px;
        }

        .btn {
            z-index: 1;
            height: 35px;
            width: 200px;
            background: none;
            border-radius: 10px;
            border: none;
            outline: none;
            position: absolute;
            top: 0%;
            left: 0%;
            transition: 0.7s;
            font-family: Poppins-Regular,sans-serif;
            font-size: 18px;
        }

        .btnback {
            position: absolute;
            background: linear-gradient(56deg, rgba(15,220,254,1) 4%, rgba(50,122,251,1) 24%, rgba(8,220,255,1) 51%, rgba(50,122,251,1) 73%, rgba(12,211,255,1) 96%);
            height: 35px;
            width: 400px;
            border-radius: 10px;
            top: 0%;
            left: 0%;
            transition: 0.4s;
        }

        .btn:hover ~ .btnback, .btn:focus ~ .btnback {
            left: -100%;
        }

        .btnmain {
            overflow: hidden;
            position: relative;
            border-radius: 10px;
            top: 10px;
            left: 69px;
            height: 35px;
            width: 200px;
        }

        .fp {
            position: relative;
            left: 0px;
            top: -10px;
        }

        .exist {
            position: relative;
            top: 55px;
            left: 0;
        }

        .sign {
            position: relative;
            top: 58px;
            left: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <h1>Login </h1>
            <asp:TextBox ID="txtmail" runat="server" CssClass="txt mail" required="true"></asp:TextBox><br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/user.png" CssClass="Imgmail" />
            <asp:Label ID="Label1" runat="server" Text="Email" CssClass="label lmail"></asp:Label><br />
            <br />
            <asp:TextBox ID="txtpass" runat="server" CssClass="txt pass" required="true" TextMode="Password"></asp:TextBox><br />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/key.png" CssClass="Imgpass" />
            <asp:Label ID="Label2" runat="server" Text="Password" CssClass="label lpass"></asp:Label><br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="google.com" CssClass="label fp">Forgot Password?</asp:HyperLink>
            <div class="btnmain">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />
                <div class="btnback"></div>
            </div>
            <asp:Label ID="Label3" runat="server" Text="Already have a Account?" CssClass="label exist"></asp:Label><br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="google.com" CssClass="sign">Signup Here</asp:HyperLink>
        </div>
    </form>
</body>
</html>
