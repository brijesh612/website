<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="placeorder.aspx.cs" Inherits="radhe_electronic.placeorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
        body{
            background-color: darkcyan;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
           <h1>PlaceOrder</h1><br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Mobile No"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Stat"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
            City<br />
            <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Payment Method"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Case On Delivery</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
      </center>
    </form>
</body>
</html>
