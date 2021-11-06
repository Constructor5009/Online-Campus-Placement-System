using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace andrewscanteensystem
{
    public partial class adr1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            GridView3.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView4.Visible = true;

        }
    }
}