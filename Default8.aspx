<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListBox ID="lst1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="lst1_SelectedIndexChanged">
        <asp:ListItem Value="5000">watch</asp:ListItem>
        <asp:ListItem Value="20">water</asp:ListItem>
        <asp:ListItem Value="501">remove</asp:ListItem>
        <asp:ListItem Value="200">nothing</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:ListBox>
    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
    <br />
    <br />
    <asp:Button ID="cmd1" runat="server" onclick="cmd1_Click" Text="Button" />
    <br />
    <br />
    <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    Enter the quallity :
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="cmd2" runat="server" onclick="cmd2_Click" Text="Button" />
    <br />
    <br />
    <asp:Label ID="lbl2" runat="server"></asp:Label>
</asp:Content>

