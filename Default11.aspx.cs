using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Default11 : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
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
        cmd = new SqlCommand("insert into Table4 values(@Username,@password,@Email,@Contact)", con);
        cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Contact", TextBox4.Text);
        cmd.ExecuteNonQuery();
        Response.Write("tamaro data add thay gayo");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("update Table4 set Username=@Username,password=@password,Email=@Email,Contact=@Contact",con);
        cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Contact", TextBox4.Text);
        cmd.ExecuteNonQuery();
        Response.Write("tamaro data update thay gayo");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("Delete from Table4 where Username=@Username", con);
        cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
        cmd.ExecuteNonQuery();
        Response.Write("tamaro data delete thay gayo");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
        Response.Write("tamaro data add thay gayo");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Update();
        Response.Write("tamaro data up thay gayo");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Delete();
        Response.Write("tamaro data del thay gayo");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        TextBox1.Text="";
        TextBox2.Text="";
        TextBox3.Text="";
        TextBox4.Text="";
    }
}