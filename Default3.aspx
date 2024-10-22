<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" CellPadding="4" 
            DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            AutoGenerateColumns="False" DataKeyNames="Dept_ID">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" 
                    SortExpression="Dept_ID" />
                <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" 
                    SortExpression="Dept_Name" />
                <asp:BoundField DataField="Emp_Name" HeaderText="Emp_Name" 
                    SortExpression="Emp_Name" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" 
                    SortExpression="Salary" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            InsertCommand="INSERT INTO Table1(Dept_ID, Dept_Name, Emp_Name, Salary) VALUES (@Dept_ID, @Dept_Name, @Emp_Name, @Salary)" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT Table1.* FROM Table1" 
            DeleteCommand="DELETE FROM Table1 WHERE (Dept_ID = @Dept_ID)" UpdateCommand="UPDATE Table1 SET Dept_Name = @Dept_Name, Emp_Name = @Emp_Name, Salary = @Salary 
WHERE (Dept_ID = @Dept_ID)">
            <DeleteParameters>
                <asp:Parameter Name="Dept_ID" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter Name="Dept_ID"  ControlID="textbox1"/>
                <asp:ControlParameter Name="Dept_Name" ControlID="textbox2" />
                <asp:ControlParameter Name="Emp_Name" ControlID="textbox3" />
                <asp:ControlParameter Name="Salary" ControlID="textbox4" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Dept_Name" />
                <asp:Parameter Name="Emp_Name" />
                <asp:Parameter Name="Salary" />
                <asp:Parameter Name="Dept_ID" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        Dept_ID :&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
        Dept_Name:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        Emp_Name:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        Salary:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Button" />
    
    </div>
    </form>
</body>
</html>
