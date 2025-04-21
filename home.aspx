<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="radhe_electronic.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    /* .auto-style3 {
        height: -10px;
        width: 1339px;
        display: flex;
        justify-content: space-around;
        color: white;
        margin-top: 55px;
        padding: 55px;
        background-color: black;
    }*/
        /*.auto-style3 {
            height: 49px;
        }*/
        /*.auto-style1 {
            width: 1199px;
            margin-right: 14px;
        }*/
        .auto-style1 {
            width: 1142px;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <link href="StyleSheet1.css" type="text/css" rel="stylesheet" />
    <center>
        <form>
        <table>
       <!-- <p style="background-color:aqua; margin-top:-55px; " class="auto-style3">&nbsp;</p> !-->
            <tr style="width: 100px; height:30px; background-color: aqua">
                <td colspan="3">
                      <h2 class="auto-style1">&nbsp;Product Image</h2>
                </td>
            </tr>
        </table>
       </form>
    </center>
    
    <p>
        <asp:Image ID="Image2" runat="server" Height="302px" Width="211px" ImageUrl="~/image/IMG_20230720_180056.jpg" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        &nbsp;<asp:Image ID="Image3" runat="server" Height="288px" Width="236px" ImageUrl="~/image/IMG_20230720_180614.jpg" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image5" runat="server" Height="256px" Width="300px" ImageUrl="~/image/IMG_20230720_180735.jpg" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image6" runat="server" Width="230px" Height="281px" ImageUrl="~/image/IMG_20230720_180024.jpg" />
    </p>
</asp:Content>
