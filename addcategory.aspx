<%@ Page Title="" Language="C#" MasterPageFile="~/admin_side.Master" AutoEventWireup="true" CodeBehind="addcategory.aspx.cs" Inherits="radhe_electronic.addcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        body{
             background-color:cyan;
        }
    </style>
    <center>
    <h2>Add Category</h2><br /><br />
    <p>
        <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click"  style="cursor:pointer"/>
    </p>
        <p>
            &nbsp;</p>

          <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="button" DataKeyNames="Id" EmptyDataText="No record to display" Font-Bold="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                <Columns>
                    <asp:TemplateField HeaderText="Category">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Text='<%# Eval("categoryname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("categoryname") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:CommandField CausesValidation="False" HeaderText="Operation" ShowDeleteButton="True" ShowEditButton="True">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
    </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
    </p>
   </center>
</asp:Content>
