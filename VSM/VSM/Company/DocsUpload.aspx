<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocsUpload.aspx.cs" Inherits="VSM.Company.DocsUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Of Document</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                how to uppload Document:
                <br />
                gather all the required Document and compress them is a file with .zip extension.<br />
                Upload that compressed .zip file.
            </p>
            <asp:FileUpload ID="docs" runat="server" /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
