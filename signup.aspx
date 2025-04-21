<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="radhe_electronic.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            margin: 0;
            padding: 0;
            background-image: url('image/login_image.jpg');
            background-size: cover;
            font-family: sans-serif;
            background-color: aqua;
        }
         .signup{
          position:absolute;
          top: 10%;
          left: 35%;
          transform:translate(-50%,-50);
          width: 500px;
          height: 550px;
          padding: 80px 40px;
          box-sizing:border-box;
          background: rgba(0,0,0,0.5);
      }
        h2{
            padding: 0px;
            margin: 0px;
            text-align: center;
            color: deepskyblue;
        }
        .btn{
            background: #f90;
            color: white;
            font-size:22px;
            font-family: Calibri;
            border-bottom: 3px solid #925b08;
            border: none;
            border-radius:5px;
            cursor: pointer;
        }
        .btn:hover{
            color: black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div class="signup">
            <h2>Registration Here</h2><br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Mobile"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Conform Password"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn" OnClick="Button1_Click" />
        </div>
       </center>
    </form>
</body>
</html>
