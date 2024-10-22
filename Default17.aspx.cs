using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default17 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter dap;
    SqlDataReader dr;
    DataSet ds;
    int no1, no2, no3, no4, no5, no6, no7, no8, no9, no10, no11;
    protected void Page_Load(object sender, EventArgs e)
    {
        con=new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Drivers\WindowsApplication1\WebSite001\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();

    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into cal values(@InwardNo,@Supplier,@ptype,@prod,@weight,@labor,@rate,@amt,@dis,@total,@saltax,@paid)", con);
        cmd.Parameters.AddWithValue("@InwardNo", txtinward.Text);
        cmd.Parameters.AddWithValue("@Supplier", txtsup.Text);
        cmd.Parameters.AddWithValue("@ptype", ListBox1.SelectedItem);
        cmd.Parameters.AddWithValue("@prod", txtpro.Text);
        cmd.Parameters.AddWithValue("@weight", txtweight.Text);
        cmd.Parameters.AddWithValue("@labor", txtlabor.Text);
        cmd.Parameters.AddWithValue("@rate", txtrate.Text);
        cmd.Parameters.AddWithValue("@amt", txtamt.Text);
        cmd.Parameters.AddWithValue("@dis", txtdis.Text);
        cmd.Parameters.AddWithValue("@total", txttotal.Text);
        cmd.Parameters.AddWithValue("@saltax", txtsal.Text);
        cmd.Parameters.AddWithValue("@paid", txtpaid.Text);
        cmd.ExecuteNonQuery();
        Response.Write("Data saved");
        }
    protected void cmd2_Click(object sender, EventArgs e)
    {
        cmd=new SqlCommand("update cal set InwardNo=@InwardNo,Supplier=@Supplier,ptype=@ptypr,prod=@prod,weight=@weight,labor=@labor,rate=@rate,amt=@amt,dis=@dis,total=@total,saltax=@saltax=@saltax,paid=@paid");
        cmd.Parameters.AddWithValue("@InwardNo", txtinward.Text);
        cmd.Parameters.AddWithValue("@Supplier", txtsup.Text);
        cmd.Parameters.AddWithValue("@ptype", ListBox1.SelectedItem);
        cmd.Parameters.AddWithValue("@prod", txtpro.Text);
        cmd.Parameters.AddWithValue("@weight", txtweight.Text);
        cmd.Parameters.AddWithValue("@labor", txtlabor.Text);
        cmd.Parameters.AddWithValue("@rate", txtrate.Text);
        cmd.Parameters.AddWithValue("@amt", txtamt.Text);
        cmd.Parameters.AddWithValue("@dis", txtdis.Text);
        cmd.Parameters.AddWithValue("@total", txttotal.Text);
        cmd.Parameters.AddWithValue("@saltax", txtsal.Text);
        cmd.Parameters.AddWithValue("@paid", txtpaid.Text);
        cmd.ExecuteNonQuery();
        Response.Write("Record updated");
    }
    protected void cmddel_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("delete from cal where InwardNo=@InwardNo", con);
        cmd.Parameters.AddWithValue("@InwardNo", txtinward.Text);
        cmd.ExecuteNonQuery();
        Response.Write("Record Deleted");
    }
    protected void cmdreset_Click(object sender, EventArgs e)
    {
        txtamt.Text = "";
        txtdis.Text = "";
        txtinward.Text = "";
        txtlabor.Text = "";
        txtpaid.Text = "";
        txtpro.Text = "";
        txtrate.Text = "";
        txtsal.Text = "";
        txtsup.Text = "";
        txttotal.Text = "";
        txtweight.Text = "";
        
        
    }
    protected void cmdcal_Click(object sender, EventArgs e)
    {
        {
            no4 = Convert.ToInt32(txtweight.Text);
            no5 = Convert.ToInt32(txtrate.Text);
            no6 = Convert.ToInt32(txtlabor.Text);
            no7 = no4 * no5 + no6;
            txtamt.Text = no7.ToString();
        }
        {

            no1 = Convert.ToInt32(txtamt.Text);
            no2 = Convert.ToInt32(txtdis.Text);
            no3 = no1 - no2;
            txttotal.Text = no3.ToString();
        }
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ListBox1.SelectedIndex == 0)
            txtdis.Text = ListBox1.SelectedValue.ToString();
        if (ListBox1.SelectedIndex == 1)
            txtdis.Text = ListBox1.SelectedValue.ToString();
        if (ListBox1.SelectedIndex == 2)
            txtdis.Text = ListBox1.SelectedValue.ToString();

    }
}