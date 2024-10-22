<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default17.aspx.cs" Inherits="Default17" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        inward&nbsp; no.
        <asp:TextBox ID="txtinward" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        i date.<asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        supliar&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtsup" runat="server"></asp:TextBox>
    
        <br />
        pro type:&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="26px" 
            onselectedindexchanged="ListBox1_SelectedIndexChanged">
            <asp:ListItem Value="1.0%">G</asp:ListItem>
            <asp:ListItem Value="1.5%">S</asp:ListItem>
            <asp:ListItem Value="2.0%">D</asp:ListItem>
        </asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; product:<asp:TextBox 
            ID="txtpro" runat="server"></asp:TextBox>
        <br />
        <br />
        weight:&nbsp; 
        <asp:TextBox ID="txtweight" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; labor:
        <asp:TextBox ID="txtlabor" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; Rate:
        <asp:TextBox ID="txtrate" runat="server"></asp:TextBox>
        <br />
        <br />
       Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Discunt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Sal taxes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        TO&nbsp; be Paide
        <br />
        <asp:TextBox ID="txtamt" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtdis" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtsal" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtpaid" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="cmdsave" runat="server" onclick="cmdsave_Click" Text="Save" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cmd2" runat="server" onclick="cmd2_Click" Text="Upadte" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cmddel" runat="server" onclick="cmddel_Click" Text="Delete" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cmdreset" runat="server" onclick="cmdreset_Click" 
            Text="Reset" />
&nbsp;
        <asp:Button ID="cmdcal" runat="server" onclick="cmdcal_Click" 
            Text="calculate" />
    
    </div>
    </form>
</body>
</html>
