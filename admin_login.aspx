<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="radhe_electronic.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color: teal; 
            margin-top:100px;   
        }
        .logininbox{
             position: absolute;
             align-items:center;
             width: 350px;
             height:420px;
             padding:80px 40px;
             box-sizing:border-box;
             background:rgba(0,0,0,0.5);
        }
        .auto-style1 {
            position: absolute;
            width: 350px;
            height: 450px;
            padding: 80px 40px;
            box-sizing: border-box;
            left: 487px;
            top: 53px;
            background: rgba(0,0,0,0.5);
            background-color: cyan;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <center>
                 <h2>Admin Login</h2>
                 <p>
                     <asp:Image ID="Image1" runat="server" Height="104px" ImageUrl="~/image/images (2).jpg" Width="111px" style="border-radius: 50%"/>
                 </p>
                 <p>
                     <asp:Label ID="Label1" runat="server" Text="UserName" Font-Bold="True"></asp:Label>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </p><br />
         
                 <p>
                     <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                 </p><br />
             
                 <p>
                     <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Style="cursor:pointer" />
                 </p>
            </center>
        </div>
    </form>
</body>
</html>
