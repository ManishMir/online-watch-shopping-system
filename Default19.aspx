<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Default19.aspx.cs" Inherits="Default19" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/img28.jpg" Width="91px" />
</p>
<asp:Menu ID="Menu1" runat="server">
    <Items>
        <asp:MenuItem NavigateUrl="~/Default17.aspx" Text="New Item" Value="New Item">
        </asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Default18.aspx" Text="New Item" Value="New Item">
        </asp:MenuItem>
    </Items>
</asp:Menu>
<p>
    <br />
</p>
<p>
</p>
<p>
</p>
</asp:Content>

