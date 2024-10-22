using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lst1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (lst1.SelectedIndex == 0)
            Image1.ImageUrl = "~/img0_1920x1200.jpg";
        if(lst1.SelectedIndex==1)
           Image1.ImageUrl="~/img28.jpg";


    }
    protected void cmd1_Click(object sender, EventArgs e)
    {
        lbl1.Text = "Tou have to choose" + lst1.SelectedIndex.ToString() + "and its cost  is Rs." + lst1.SelectedValue.ToString();
    }
    protected void cmd2_Click(object sender, EventArgs e)
    {
        lbl2.Text = "you have to pay almost" + Convert.ToString(Convert.ToInt32(lst1.SelectedValue) * Convert.ToInt32(TextBox1.Text));
    }
}