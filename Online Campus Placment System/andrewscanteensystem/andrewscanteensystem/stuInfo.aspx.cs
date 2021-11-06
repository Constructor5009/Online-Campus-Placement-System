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
    public partial class stuInfo : System.Web.UI.Page
    {
        static String resumelink;

        static Int32 applicationid;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (uploadresume() == true)
            {
                String query = "insert into stuData(aapid, fname,mname,lname,sapId,dob,age,email,10school,10year,10board,10per" +
                    "12col,12year,12board,12per,degreecol,degreeyear,degreeboard,degreeper,postcol,postyear,postboard,postper,techskills,course1,course2,course3," +
                    "course4,interncom1,intern1,internwork1,interncom2,intern2,internwork2,interncom3,intern3,internwork3,proj1,proj1tech,proj1desc,proj2,proj2tech,proj2desc,proj3,proj3tech,proj3desc,resumefile)" +
                    " values(" + applicationid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text +
                    "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text +
                    "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + TextBox22.Text + "','" + TextBox23.Text + "','" + TextBox39+ "','" + TextBox24.Text +
                    "','" + TextBox5.Text + "','" + TextBox5.Text + "','" + TextBox5.Text + "','" + TextBox5.Text + "','" + TextBox5.Text + "','" + TextBox5.Text +
                    "','" + TextBox5.Text + "','" + TextBox5.Text + "','" + TextBox5.Text + "','" + TextBox5.Text + "')";
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label1.Text = "Your Application ID is " + applicationid.ToString() + " for Further Reference .Thanks For Apply For The Post: Developer. We will Reach at You Soon.";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            

        }
        }
        private Boolean uploadresume()
        {
            Boolean resumesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "application/pdf")
                {
                    int filesize;
                    filesize = FileUpload1.PostedFile.ContentLength;

                    getapplicationid();
                    FileUpload1.SaveAs(Server.MapPath("~/UploadedResume/") + applicationid + ".pdf");

                    resumelink = "UploadedResume/" + applicationid + ".pdf";
                    resumesaved = true;
                    Label1.Text = "";
                }
                else
                {
                    Label1.Text = "Upload Resume in PDF Format Only";
                }

            }
            else
            {
                Label1.Text = "Kindly Upload Resume Before Apply in PDF Format";
            }


            return resumesaved;
        }
        public void getapplicationid()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

            String myquery = "select appid from stuData";
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
                applicationid = 10001;

            }
            else
            {



                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

                String myquery1 = "select max(appid) from stuData";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = con1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                applicationid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
                applicationid = applicationid + 1;
                con1.Close();
            }

        }
    }
}