using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default10 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cm;
    SqlDataAdapter dap;
    DataSet ds;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Drivers\WindowsApplication1\WebSite001\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void cmd_Click(object sender, EventArgs e)
    {
        cm = new SqlCommand("insert into Table3 values(@User_name,@Email_Id,@contact)", con);
        cm.Parameters.AddWithValue("@User_name", TextBox1.Text);
        cm.Parameters.AddWithValue("@Email_Id", TextBox2.Text);
        cm.Parameters.AddWithValue("@contact", TextBox3.Text);
        cm.ExecuteNonQuery();
        Response.Write("record inserted");

        cm = new SqlCommand("select  * from Table3 where User_name=@User_name", con);
        cm.Parameters.AddWithValue("@User_name", TextBox1.Text);
        dap = new SqlDataAdapter();
        ds = new DataSet();
        dap.SelectCommand=cm;
        if(dap.Fill(ds)>0)
        {
            lbl.Text=ds.Tables[0].Rows[0].ItemArray[0].ToString();
            lbl2.Text=ds.Tables[0].Rows[0].ItemArray[1].ToString();
            lbl3.Text=ds.Tables[0].Rows[0].ItemArray[2].ToString();
        }
    }
}