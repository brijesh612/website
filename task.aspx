<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="task.aspx.cs" Inherits="radhe_electronic.task" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <br />
    <asp:Label ID="Label2" runat="server" Text="mobile & email"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="send" OnClick="Button1_Click" />
    <br />
        </center>
    
</asp:Content>
