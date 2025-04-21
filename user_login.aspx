<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="radhe_electronic.user_login" %>

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
      .login{
          position:absolute;
          top: 20%;
          left: 40%;
          transform:translate(-50%,-50);
          width: 350px;
          height: 420px;
          padding: 80px 40px;
          box-sizing:border-box;
          background: rgba(0,0,0,0.5);
      }
     h2{
         padding: 0px;
         margin: 0px;
         text-align:center;
         color: yellow;
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
    /* .name, .mobile, .pass{
         font-weight:bold;
         text-align: right;
         color: #fff;
     }
     .txtname, .txtmb, .txtpass{
          width:100%;
          margin-bottom: 20px;
     }
     .txtname, .txtmb, .txtpass{
          border:none;
          border-bottom:3px solid #fff;
          outline: none;
          height: 40px;
          color: #fff;
          font-size: 16px;

     }
     ::placeholder{
         color:rgba(255,255,255,.5);
     }*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div class="login">
            <h2>Login Here</h2><br />
            <br />
            <asp:Label ID="Label1" CssClass="name" runat="server" Text="UserName"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtname"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" CssClass="mobile" runat="server" Text="Mobile"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="txtmb"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" CssClass="pass" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" CssClass="txtpass" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="btn" runat="server" OnClick="Button1_Click1" Text="Login" />
            <br />
            <asp:LinkButton ID="LinkButton1" CssClass="btn1" runat="server" OnClick="LinkButton1_Click">Signup</asp:LinkButton>
        </div>
            </center>
    </form>
</body>
</html>
