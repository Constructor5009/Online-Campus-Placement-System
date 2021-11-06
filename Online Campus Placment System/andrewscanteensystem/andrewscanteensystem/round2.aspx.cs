using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace andrewscanteensystem
{
    public partial class round2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView2.DataSource = SqlDataSource1;
                GridView2.DataBind();
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                //Reference the GridView Row.
                GridViewRow row = GridView2.Rows[rowIndex];

                //Fetch value of Name.
                string country = row.Cells[1].Text;
                TextBox id = GridView2.FindControl("TextBox3") as TextBox;
                //Label sapid = GridView2.FindControl("Label3") as Label;
                string sapid = (row.FindControl("Label3") as Label).Text;
                string name1 = (row.FindControl("Label4") as Label).Text;
                string name2 = (row.FindControl("Label5") as Label).Text;




                int ab = Convert.ToInt32(TextBox1.Text.ToString());

                //String query = "Update job set selectedCandidates+='" + name + "' where Id=" + ab;
                //String query = "Update job set selectedCandidates=@s where Id=@ab" ;
                //String query = "Update job set selectedCandidates+= ','+'" + name + "' where Id=" + ab;
                // String query2 = "Update job set selectedCandidatesName+= ','+'" + name1 + "' where Id=" + ab;
                String query = "insert into round2(sapId, jobid, fname,lname) values(@sapid,@ab,@name1,@name2)";



                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@sapid", sapid);
                cmd.Parameters.AddWithValue("@ab", ab);
                cmd.Parameters.AddWithValue("@name1", name1);
                cmd.Parameters.AddWithValue("@name2", name2);
                //cmd.Parameters.AddWithValue("@s", );
                // cmd.Parameters.AddWithValue("@ab", ab);
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();


                Label1.Text = "New Row Inserted Successfully";
                SqlDataSource1.DataBind();
                GridView2.DataSource = SqlDataSource1;
                GridView2.DataBind();

            }

        }


        protected void LinkButton4_Click(object sender, EventArgs e)
        {



            Label sapid = GridView2.FindControl("Label3") as Label;
            int ab = Convert.ToInt32(TextBox1.Text.ToString());
            String query = "Update job set selectedCandidates='" + sapid.Text + "' where Id=" + ab;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "New Row Inserted Successfully";
            SqlDataSource1.DataBind();
            GridView2.DataSource = SqlDataSource1;
            GridView2.DataBind();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Name: " + ab + "\\nCountry: " + sapid + "');", true);

        }










        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label sapid = GridView2.Rows[e.RowIndex].FindControl("Label3") as Label;
            TextBox name = GridView2.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String query = "Update job set selectedCandidates='" + sapid + "' where Id=" + name;

            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Row Data Has Been Updated Successfully";
            GridView2.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView2.DataSource = SqlDataSource1;
            GridView2.DataBind();
        }





        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView3.Visible = true;
            //string value;
            //int ab = Convert.ToInt32(TextBox1.Text.ToString());

            //  DataTable dt = new DataTable();

            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);



            // String myquery = "select jobid, sapId, fname,lname from round1 where  jobid='" + ab + "'";
            //String myquery2 = "select selectedCandidatesName from job where  Id='" + ab + "'";


            //  SqlCommand cmd = new SqlCommand();
            //
            //cmd.CommandText = myquery;
            // cmd.Connection = con;
            // SqlCommand CmdName = con.CreateCommand(); 
            //CmdName.CommandText = myquery;

            //SqlCommand CmdName2 = con.CreateCommand();

            //CmdName2.CommandText = myquery2;

            // con.Open();
            //string CustomerName = (string)CmdName.ExecuteScalar();
            //string Customer = (string)CmdName2.ExecuteScalar();
            //List<string> fields = new List<string>(CustomerName.Split(new[] { ',' }));
            //List<string> field = new List<string>(Customer.Split(new[] { ',' }));
            //  var newList = fields.Join(fields, s => fields.IndexOf(s), i => field.IndexOf(i), (s, i) => new { sv = s, iv = i }).ToList();

            // var newList = fields.Zip(field, (s, i) => new { SapId = s, Name = i }).ToList();
            //http://www.techbrothersit.com/2016/04/c-how-to-save-sql-query-results-to.html 
            //SqlDataAdapter da = new SqlDataAdapter();
            // da.SelectCommand = cmd;
            // DataSet ds = new DataSet();
            // da.Fill(dt);
            //con.Open();
            //GridView3.DataSource = myquery;
            // GridView3.DataSource = field;
            // GridView3.DataBind();

            // con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "StudentDetail.xls"));
            Response.ContentType = "application/ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView3.AllowPaging = false;
            GridView3.HeaderRow.Style.Add("background-color", "#FFFFFF");
            for (int i = 0; i < GridView3.HeaderRow.Cells.Count; i++)
            {
                GridView3.HeaderRow.Cells[i].Style.Add("background-color", "#507CD1");
            }
            int j = 1;
            foreach (GridViewRow gvrow in GridView3.Rows)
            {
                gvrow.BackColor = System.Drawing.Color.White;
                if (j <= GridView3.Rows.Count)
                {
                    if (j % 2 != 0)
                    {
                        for (int k = 0; k < gvrow.Cells.Count; k++)
                        {
                            gvrow.Cells[k].Style.Add("background-color", "#EFF3FB");
                        }
                    }
                }
                j++;
            }
            GridView3.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string args = btn.CommandArgument;
            Response.Redirect("candidateDetails.aspx?sapId=" + args);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }


    }
}