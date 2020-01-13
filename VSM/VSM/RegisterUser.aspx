<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="VSM.RegisterUSer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 224px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <th colspan="2">
                        <h1>
                            <center>User Registration</center>
                        </h1>
                    </th>
                </tr>

                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text=" First Name"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtfname" runat="server" placeholder="Firstname" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Middle Name</td>
                    <td>
                        <asp:TextBox ID="txtmname" runat="server" placeholder="Middlename" Width="300px"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style1">Last Name</td>
                    <td>
                        <asp:TextBox ID="txtlname" runat="server" placeholder="Lastname" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtmail" runat="server" placeholder="Email" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" placeholder="Password" TextMode="Password" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtconpass" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label10" runat="server" Text="Gender"></asp:Label></td>
                    <td>
                        <asp:RadioButton ID="male" runat="server" Text="Male" GroupName="gender" />
                        <asp:RadioButton ID="female" runat="server" Text="Female" GroupName="gender" />
                        <asp:RadioButton ID="other" runat="server" Text="Other" GroupName="gender" /></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label9" runat="server" Text="Birth Date"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtdob" runat="server" Enabled="true" TextMode="Date" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label11" runat="server" Text="Phone Number"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtphno" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" Height="138px" Width="289px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Country"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddlCountry" runat="server" Height="19px" Width="300px"></asp:DropDownList><br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="State"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddlState" runat="server" Width="300px"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="City"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddlCity" runat="server" Width="300px"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Text="Pincode"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtpincode" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
                    <td>
                        <input type="reset" name="reset" value="Cancle" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
