<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="header.aspx.cs" Inherits="radhe_electronic.header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:1100px; margin: 0 auto;">
                <tr style="width:1100px; height:50px; border-color:#5f98f3; background-color: white">
                    <td style="width:100px">
                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/image/images (2).jpg" Width="100px" /></td>
                    <td style="width:780px" align="center">
                        <asp:Label ID="Label1" runat="server" Text="Radhe Electronic"></asp:Label>
                        <br /><b>For Those Who Love Shopping...</b>
                    </td>
                    <td style="width:220px; text-align:right">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" style="text-align: left;" postbackurl="" ImageUrl="~/image/images (4).jpg" Width="50px" />
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" style="text-align: left;" Postbackurl="" ImageUrl="~/image/images.png" Width="50px" />
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" style="text-align: left;" postbackurl="" ImageUrl="~/image/images (2).jpg" Width="50px" />
                    </td>
                </tr>

                 <tr style="width: 100px; height:40px; background-color: #5f98f3">
                    <td colspan="3">
                        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" StaticSubMenuIndent="19px">
                            <Items>
                                <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                                <asp:MenuItem Text="Product" Value="Product"></asp:MenuItem>
                                <asp:MenuItem Text="Sign Up" Value="Sign Up"></asp:MenuItem>
                                <asp:MenuItem Text="About" Value="About"></asp:MenuItem>
                                <asp:MenuItem Text="Contact" Value="Contact"></asp:MenuItem>
                                <asp:MenuItem Text="Feedback" Value="Feedback"></asp:MenuItem>
                            </Items>
                            <StaticHoverStyle BackColor="#FF6666" BorderColor="#FF6666" BorderStyle="Outset" ForeColor="White" Height="40px" />
                            <StaticMenuItemStyle Font-Bold="True" Font-Size="Large" ForeColor="Black" HorizontalPadding="54px" />
                            <StaticSelectedStyle BackColor="#FF5050" BorderColor="#FF6666" BorderStyle="Inset" Height="40px" />
                        </asp:Menu>
                    </td>
                </tr>

                 <tr style="width: 1110px; height: 310px;">
                    <td colspan="3">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
                                <asp:Image ID="Image2" runat="server" BackColor="White" BorderColor="Gray" BorderStyle="Double" Height="270px" ImageUrl="~/image/IMG_20230720_180024.jpg" Width="1140px" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>

                 <tr>
                    <td colspan="3"></td>
                </tr>

                 <tr>
                    <td colspan="3">Footer</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
