<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage4.master"  CodeFile="Default7.aspx.cs" Inherits="Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="Deptid" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Deptid" HeaderText="Deptid" 
                    SortExpression="Deptid" />
                <asp:BoundField DataField="deptname" HeaderText="deptname" 
                    SortExpression="deptname" />
                <asp:BoundField DataField="empname" HeaderText="empname" 
                    SortExpression="empname" />
                <asp:BoundField DataField="salary" HeaderText="salary" 
                    SortExpression="salary" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM Table2 WHERE (Deptid = @Deptid)" 
            InsertCommand="INSERT INTO Table2(deptname, empname, salary) VALUES (@deptname, @empname, @salary)" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT Table2.* FROM Table2" 
            UpdateCommand="UPDATE Table2 SET deptname = @deptname, empname = @empname, salary = @salary WHERE (Deptid = @Deptid)">
            <DeleteParameters>
                <asp:Parameter Name="Deptid" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="deptname" />
                <asp:Parameter Name="empname" />
                <asp:Parameter Name="salary" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="deptname" />
                <asp:Parameter Name="empname" />
                <asp:Parameter Name="salary" />
                <asp:Parameter Name="Deptid" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </asp:Content>
