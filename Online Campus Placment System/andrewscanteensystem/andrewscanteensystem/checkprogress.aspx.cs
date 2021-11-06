using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace andrewscanteensystem
{
    public partial class checkprogress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            GridView1.DataSourceID = null;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

            GridView2.DataSourceID = null;
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();

            GridView3.DataSourceID = null;
            GridView3.DataSource = SqlDataSource3;
            GridView3.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
        }
    }
}