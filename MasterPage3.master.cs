using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage3 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Image im = new Image();
        im.Height = 500;
        im.Width = 1350;
        im.ImageUrl = "~/img28.jpg";
        PlaceHolder1.Controls.Add(im);
    }
}
