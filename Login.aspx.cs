using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter dap;
    SqlDataReader dr;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        con=new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Drivers\WindowsApplication1\WebSite001\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from Login where User_name=@User_Name and Password=@Password", con);
        cmd.Parameters.AddWithValue("User_Name", TextBox1.Text);
        cmd.Parameters.AddWithValue("Password", TextBox2.Text);
        cmd.ExecuteNonQuery();
        ds = new DataSet();
        dap = new SqlDataAdapter();
        dap.SelectCommand = cmd;
        if (dap.Fill(ds) > 0)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Write("Try Again");
        }
    }
}