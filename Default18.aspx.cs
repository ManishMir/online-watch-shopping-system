using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default18 : System.Web.UI.Page
{
    int n1, n2, n3, n4, n5;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmd5_Click(object sender, EventArgs e)
    {
        n1 = Convert.ToInt32(txtbasic.Text);
        n2 = Convert.ToInt32(txtda.Text);
        n3 = Convert.ToInt32(txthra.Text);
        n4 = n1 + n2 + n3;
        txtgross.Text = n4.ToString();
        int n10 = Convert.ToInt32(txtpf.Text);
        n10 = n1 * 100 / 12;
        
        if (n4 < 3000)
            txtptax.Text = "0";
        if(n4>=3000 && n4<=6000)
            txtptax.Text="40";
        if(n4>=6000 && n4<=9000)
            txtptax.Text="80";
        if (n4 >= 9000 && n4 <= 12000)
            txtptax.Text = "120";
        else if(n4>12000)
            txtptax.Text="200";
        int n6 = Convert.ToInt32(txtdedu.Text);
        int n7 = Convert.ToInt32(txtlic2.Text);
        int n8 = n6 + n7 + n4;
        txtdedu.Text = n8.ToString();
        int n9 = Convert.ToInt32(txtsal.Text);
        n9 = n4 - n8;
        txtsal.Text = n9.ToString();

        
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ListBox1.SelectedIndex == 0)
            txthra.Text = ListBox1.SelectedValue.ToString();
        if (ListBox1.SelectedIndex == 1)
            txthra.Text = ListBox1.SelectedValue.ToString();
                n3 = n1 * 100 / 10;
                if (ListBox1.SelectedIndex == 2)
                    txthra.Text = ListBox1.SelectedValue.ToString();
                 n3 = n1 * 100 / 15;

    }
}