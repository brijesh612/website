<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtocart.aspx.cs" Inherits="radhe_electronic.addtocart" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <center>
            
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Continue Shopping</asp:LinkButton>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="297px" ShowFooter="True" Width="651px" DataKeyNames="id" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="id">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="category">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("pcategory") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="name">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("pname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("pimage") %>' Height="200px" Width="200px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="price">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("pprice") %>'></asp:Label>
                    </ItemTemplate> 
                </asp:TemplateField>
                            
               
                <asp:CommandField HeaderText="Remove" ShowDeleteButton="True" DeleteText="Remove" />
                            
               
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            <br />
            Total:<asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
        <center>
       
            <asp:Button ID="Button2" runat="server" Text="PlaceOrder" OnClick="Button1_Click" />
          </center>  
          </center>
        <br />
        </form>
    </body>
</html>
