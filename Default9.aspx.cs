using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default9 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter dap;
    DataSet ds;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Drivers\WindowsApplication1\WebSite001\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from Login where User_Name=@User_Name and Password=@Password", con);
        cmd.Parameters.AddWithValue("@User_Name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        dap = new SqlDataAdapter();
        dap.SelectCommand = cmd;
        ds = new DataSet(); ;
        if(dap.Fill(ds)>0)
        {
            lbl1.Text="Succesfully Login";
            Response.Redirect("Default.aspx");
        }
        else
        {
            lbl1.Text="Try Again";
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text="";
        TextBox2.Text="";

    }
}