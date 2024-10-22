<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default10.aspx.cs" Inherits="Default10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <p>
        User name :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        Email id&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Enter propar email" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <p>
        tcontact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="TextBox3" 
            runat="server" MaxLength="10"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Enter contact number" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p style="margin-left: 80px">
        <asp:Button ID="cmd" runat="server" onclick="cmd_Click" Text="submit" />
    </p>
    <p style="margin-left: 80px">
        &nbsp;</p>
    <p style="margin-left: 80px">
        User name:<asp:Label ID="lbl" runat="server"></asp:Label>
    </p>
    <p style="margin-left: 80px">
        Email Id :<asp:Label ID="lbl2" runat="server"></asp:Label>
    </p>
    <p style="margin-left: 80px">
        Contact :<asp:Label ID="lbl3" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
        </center>
</asp:Content>

