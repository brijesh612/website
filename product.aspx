<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="radhe_electronic.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 100%;
        }
        .add{
            background: yellow;
            color: black;
            font-size:22px;
            font-family: Calibri;
            border-bottom: 10px solid #925b08;
            border: none;
            border-radius: 30%;
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <center>
    <p>
       
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/user_login.aspx">Click To Login</asp:HyperLink>
            <p>
       
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" DataKeyField="Id" DataSourceID="SqlDataSource1" Height="293px" Width="310px" OnItemDataBound="DataList1_ItemDataBound" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnItemCommand="DataList1_ItemCommand">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <div style="text-align: center">
                <table class="auto-style3" border="1" align="center">
                    <tr>
                        <td class="auto-style4">Id:
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </td>
                    </tr>
                   
                    <tr>
                        <td>Category:
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("pcategory") %>'></asp:Label>
                        </td>
                    </tr>
                   
                    <tr>
                        <td>Name:
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("pname") %>'></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:Image ID="Image3" runat="server" ImageUrl='<%# Bind("pimage") %>' Height="200px" Width="200px"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>Price:
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("pprice") %>'></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="add"  Text="Add To Cart" CommandName="SelectType" CommandArgument='<%# Bind("id") %>'></asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <br />
                    </div>
            </ItemTemplate>
            <SelectedItemStyle BorderStyle="Solid" BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
          </asp:DataList>
                  &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [addproduct]"></asp:SqlDataSource>
       
            <p>
                &nbsp;</center>
    
</asp:Content>
