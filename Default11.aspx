<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default11.aspx.cs" Inherits="Default11" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        User&nbsp; name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox 
            ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox 
            ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        Email Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox 
            ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        contact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox 
            ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Insert" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Delete" />
        <br />
        <br />
&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="in" />
&nbsp;
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="up" />
&nbsp;<asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="del" />
        <br />
        <asp:Button ID="Button7" runat="server" Text="clear" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM Table4 WHERE (Username = @Username)" 
            InsertCommand="INSERT INTO Table4(Username, password, Email, Contact) VALUES (@Username, @password, @Email, @Contact)" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT Table4.* FROM Table4" UpdateCommand="UPDATE Table4 SET password = @password, Email = @Email, Contact = @Contact,
 Username = WHERE (Username = @Username)">
            <DeleteParameters>
                <asp:controlParameter Name="Username" ControlID="TextBox1" />
            </DeleteParameters>
            <InsertParameters>
             
                <asp:controlParameter Name="Username" ControlID="TextBox1" />
                <asp:ControlParameter Name="password" ControlID="TextBox2" />
                <asp:controlParameter Name="Email" ControlID="TextBox3" />
                <asp:controlParameter Name="Contact" ControlID="TextBox4" />
            </InsertParameters>
            <UpdateParameters>
               <asp:ControlParameter Name="password" ControlID="TextBox2" />
                <asp:controlParameter Name="Email" ControlID="TextBox3" />
                <asp:controlParameter Name="Contact" ControlID="TextBox4" />
               <asp:controlParameter Name="Username" ControlID="TextBox1" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
