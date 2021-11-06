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
    public partial class stuDetail : System.Web.UI.Page
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
                String query = "insert into stuData(fname,mname,lname,sapId,dob,age,email,tschool,tyear,tboard,tper,twcol,twyear,twboard,twper,degreecol,degreeyear,degreeboard,degreeper,postcol,postyear,postboard,postper,techskills,course1,course2,course3,course4,interncom1,intern1,internwork1,interncom2,intern2,internwork2,interncom3,intern3,internwork3,proj1,proj1tech,proj1desc,proj2,proj2tech,proj2desc,proj3,proj3tech,proj3desc,resumefile,appid) values(@fname,@mname,@lname,@sapId,@dob,@age,@email,@tschool,@tyear,@tboard,@tper,@twcol,@twyear,@twboard,@twper,@degreecol,@degreeyear,@degreeboard,@degreeper,@postcol,@postyear,@postboard,@postper,@techskills,@course1,@course2,@course3,@course4,@interncom1,@intern1,@internwork1,@interncom2,@intern2,@internwork2,@interncom3,@intern3,@internwork3,@proj1,@proj1tech,@proj1desc,@proj2,@proj2tech,@proj2desc,@proj3,@proj3tech,@proj3desc,@resumefile,@appid)";
                
                
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@mname", TextBox2.Text);
                cmd.Parameters.AddWithValue("@lname", TextBox3.Text);
                cmd.Parameters.AddWithValue("@sapId", TextBox4.Text);
                cmd.Parameters.AddWithValue("@dob", TextBox5.Text);
                cmd.Parameters.AddWithValue("@age", TextBox6.Text);
                cmd.Parameters.AddWithValue("@email", TextBox7.Text);
                cmd.Parameters.AddWithValue("@tschool", TextBox8.Text);
                cmd.Parameters.AddWithValue("@tyear", TextBox9.Text);
                cmd.Parameters.AddWithValue("@tboard", TextBox10.Text);
                cmd.Parameters.AddWithValue("@tper", TextBox11.Text);
                cmd.Parameters.AddWithValue("@twcol", TextBox12.Text);
                cmd.Parameters.AddWithValue("@twyear", TextBox13.Text);
                cmd.Parameters.AddWithValue("@twboard", TextBox14.Text);
                cmd.Parameters.AddWithValue("@twper", TextBox15.Text);
                cmd.Parameters.AddWithValue("@degreecol", TextBox16.Text);
                cmd.Parameters.AddWithValue("@degreeyear", TextBox17.Text);
                cmd.Parameters.AddWithValue("@degreeboard", TextBox18.Text);
                cmd.Parameters.AddWithValue("@degreeper", TextBox19.Text);
                cmd.Parameters.AddWithValue("@postcol", TextBox20.Text);
                cmd.Parameters.AddWithValue("@postyear", TextBox21.Text);
                cmd.Parameters.AddWithValue("@postboard", TextBox22.Text);
                cmd.Parameters.AddWithValue("@postper", TextBox23.Text);
                cmd.Parameters.AddWithValue("@techskills", TextBox41.Text);
                cmd.Parameters.AddWithValue("@course1", TextBox24.Text);
                cmd.Parameters.AddWithValue("@course2", TextBox25.Text);
                cmd.Parameters.AddWithValue("@course3", TextBox26.Text);
                cmd.Parameters.AddWithValue("@course4", TextBox27.Text);
                cmd.Parameters.AddWithValue("@interncom1", TextBox28.Text);
                cmd.Parameters.AddWithValue("@intern1", TextBox29.Text);
                cmd.Parameters.AddWithValue("@internwork1", TextBox42.Text);
                cmd.Parameters.AddWithValue("@interncom2", TextBox30.Text);
                cmd.Parameters.AddWithValue("@intern2", TextBox31.Text);
                cmd.Parameters.AddWithValue("@internwork2", TextBox43.Text);
                cmd.Parameters.AddWithValue("@interncom3", TextBox32.Text);
                cmd.Parameters.AddWithValue("@intern3", TextBox33.Text);
                cmd.Parameters.AddWithValue("@internwork3", TextBox44.Text);
                cmd.Parameters.AddWithValue("@proj1", TextBox34.Text);
                cmd.Parameters.AddWithValue("@proj1tech", TextBox35.Text);
                cmd.Parameters.AddWithValue("@proj1desc", TextBox45.Text);
                cmd.Parameters.AddWithValue("@proj2", TextBox36.Text);
                cmd.Parameters.AddWithValue("@proj2tech", TextBox37.Text);
                cmd.Parameters.AddWithValue("@proj2desc", TextBox46.Text);
                cmd.Parameters.AddWithValue("@proj3", TextBox38.Text);
                cmd.Parameters.AddWithValue("@proj3tech", TextBox39.Text);
                cmd.Parameters.AddWithValue("@proj3desc", TextBox47.Text);
                cmd.Parameters.AddWithValue("@resumefile", resumelink);
                cmd.Parameters.AddWithValue("@appid", applicationid);






                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label1.Text = "Thanks For Applying. We will Reach at You Soon.";
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