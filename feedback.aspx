<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="radhe_electronic.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
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
    </style>
    <link href="StyleSheet1.css" type="text/css" rel="stylesheet" />
    <div class="feedback">
    <center>
         <h2>Feedback Form</h2>
         <p>&nbsp;</p>
         <p>
             <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox1" runat="server" Width="277px" placeholder="Enter Name"></asp:TextBox>
         </p>
         <p>&nbsp;</p>
         <p>
             <asp:Label ID="Label2" runat="server" Text="Mobile"></asp:Label>
&nbsp;&nbsp;
             <asp:TextBox ID="TextBox2" runat="server" Width="278px" placeholder="Enter Mobile No"></asp:TextBox>
         </p>
         <p>&nbsp;</p>
         <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label3" runat="server" Text="Rating"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
         <p>
             <asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem>Very Good</asp:ListItem>
                 <asp:ListItem>Good</asp:ListItem>
                 <asp:ListItem>Excllent</asp:ListItem>
                 <asp:ListItem>Poor</asp:ListItem>
             </asp:DropDownList>
         </p>
         <p>&nbsp;</p>
         <p>
             <asp:Label ID="Label4" runat="server" Text="MessageBox"></asp:Label>
             &nbsp;<asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="298px" placeholder="Message"></asp:TextBox>
         </p>
         <p>&nbsp;</p>
         <p>
             <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Submit" OnClick="Button1_Click" style="cursor:pointer" />
         </p>
    </center>
</div>
</asp:Content>
