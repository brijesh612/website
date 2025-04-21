<%@ Page Title="" Language="C#" MasterPageFile="~/admin_side.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="radhe_electronic.addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <style>
             body{
                  background-color: cyan;
             }
        </style>
            <h1>Add  Product</h1>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Product Category"></asp:Label>
            </p>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="categoryname" DataValueField="categoryname">
                </asp:DropDownList>
        </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Product Price"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </p>
            <p>Image Upload</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" style="cursor:pointer; height: 35px;" />
            </p>
        <p>
                &nbsp;</p>
        <p>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="cursor:pointer">Product_view</asp:LinkButton>
            </p>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
        </div>
    </center>
</asp:Content>
