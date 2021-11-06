using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace andrewscanteensystem
{
    public partial class jobPost : System.Web.UI.Page
    {
        static String imagelink;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getjobid();
            }
        }

       

       
        private Boolean uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "image/jpeg")
                {

                    FileUpload1.SaveAs(Server.MapPath("~/images/") + Label3.Text + ".jpg");
                    imagelink = "images/" + Label3.Text + ".jpg";
                    imagesaved = true;
                }
                else
                {
                    Label3.Text = "Kindly Upload JPEG Format Image Only";
                }

            }

            else
            {
                Label3.Text = "You have not selected any file - Browse and Select File First";
            }

            return imagesaved;

        }
        public void getjobid()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            
            String myquery = "select Id from job";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                Label1.Text = "1001";

            }
            else
            {



                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

                String myquery1 = "select max(Id) from job";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = con1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                Label1.Text = ds1.Tables[0].Rows[0][0].ToString();
                int a;
                a = Convert.ToInt16(Label1.Text);
                a = a + 1;
                Label1.Text = a.ToString();
                con1.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (uploadimage() == true)
            {
                String query = "insert into job(Id,comName, fromdate,todate,designation,location, compensation,logo,ppttime,round1,round2,round3,round4,round5,round6) " +
                    "values(" + Label1.Text + ",'" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox2.Text + "','"
                    + TextBox5.Text + "','" + TextBox6.Text + "','" + imagelink + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','"
                    + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "')";



                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label2.Text = "Job Has Been Successfully Saved";
                getjobid();
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
    }
}