<%@ Page Title="" Language="C#" MasterPageFile="~/admin_side.Master" AutoEventWireup="true" CodeBehind="home1.aspx.cs" Inherits="radhe_electronic.home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
           margin: 0;
            padding: 0;
            background-image: url('image/welcome_admin.jpg');
            background-size: cover;
            font-family: sans-serif;
            background-color: aqua;
        }
        p{
            font-size: 70px;
            margin-top: 300px;
            
        }
    </style>
    <center>
          <p>Welcome Admin</p>
    </center>
</asp:Content>
