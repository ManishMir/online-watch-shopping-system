using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        //SqlDataSource1.Insert();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource2.Insert();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource2.Update();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlDataSource2.Delete();
    }
}