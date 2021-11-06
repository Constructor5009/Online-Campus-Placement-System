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
    public partial class viewProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String myquery = "Select * from stuData where sapId=" + TextBox48.Text;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label2.Text = "Particular Sap Id Found";
               
                TextBox1.Text = ds.Tables[0].Rows[0]["fname"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["mname"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["lname"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["age"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["dob"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["email"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["tschool"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[0]["tboard"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["tyear"].ToString();
                TextBox11.Text = ds.Tables[0].Rows[0]["tper"].ToString();


                TextBox12.Text = ds.Tables[0].Rows[0]["twcol"].ToString();
                TextBox14.Text = ds.Tables[0].Rows[0]["twboard"].ToString();
                TextBox13.Text = ds.Tables[0].Rows[0]["twyear"].ToString();
                TextBox15.Text = ds.Tables[0].Rows[0]["twper"].ToString();

                TextBox16.Text = ds.Tables[0].Rows[0]["degreecol"].ToString();
                TextBox18.Text = ds.Tables[0].Rows[0]["degreeboard"].ToString();
                TextBox17.Text = ds.Tables[0].Rows[0]["degreeyear"].ToString();
                TextBox19.Text = ds.Tables[0].Rows[0]["degreeper"].ToString();


                TextBox20.Text = ds.Tables[0].Rows[0]["postcol"].ToString();
                TextBox22.Text = ds.Tables[0].Rows[0]["postboard"].ToString();
                TextBox21.Text = ds.Tables[0].Rows[0]["postyear"].ToString();
                TextBox23.Text = ds.Tables[0].Rows[0]["postper"].ToString();

                TextBox41.Text = ds.Tables[0].Rows[0]["techskills"].ToString();
                TextBox24.Text = ds.Tables[0].Rows[0]["course1"].ToString();
                TextBox25.Text = ds.Tables[0].Rows[0]["course2"].ToString();
                TextBox26.Text = ds.Tables[0].Rows[0]["course3"].ToString();
                TextBox27.Text = ds.Tables[0].Rows[0]["course4"].ToString();

                TextBox28.Text = ds.Tables[0].Rows[0]["interncom1"].ToString();
                TextBox29.Text = ds.Tables[0].Rows[0]["intern1"].ToString();
                TextBox42.Text = ds.Tables[0].Rows[0]["internwork1"].ToString();
                TextBox30.Text = ds.Tables[0].Rows[0]["interncom2"].ToString();
                TextBox31.Text = ds.Tables[0].Rows[0]["intern2"].ToString();
                TextBox43.Text = ds.Tables[0].Rows[0]["internwork2"].ToString();
                TextBox32.Text = ds.Tables[0].Rows[0]["interncom3"].ToString();
                TextBox33.Text = ds.Tables[0].Rows[0]["intern3"].ToString();
                TextBox44.Text = ds.Tables[0].Rows[0]["internwork3"].ToString();
                TextBox34.Text = ds.Tables[0].Rows[0]["proj1"].ToString();
                TextBox35.Text = ds.Tables[0].Rows[0]["proj1tech"].ToString();
                TextBox45.Text = ds.Tables[0].Rows[0]["proj1desc"].ToString();
                TextBox36.Text = ds.Tables[0].Rows[0]["proj2"].ToString();
                TextBox37.Text = ds.Tables[0].Rows[0]["proj2tech"].ToString();
                TextBox46.Text = ds.Tables[0].Rows[0]["proj2desc"].ToString();
                TextBox38.Text = ds.Tables[0].Rows[0]["proj3"].ToString();
                TextBox39.Text = ds.Tables[0].Rows[0]["proj3tech"].ToString();
                TextBox47.Text = ds.Tables[0].Rows[0]["proj3desc"].ToString();

            }
            else
            {
                Label2.Text = "Particular Sap Id Not Found";

            }
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

            String query = "update stuData set fname=@fname,mname=@mname,lname=@lname,dob=@dob,age=@age,email=@email,tschool=@tschool,tyear=@tyear,tboard=@tboard,tper=@tper,twcol=@twcol,twyear=@twyear,twboard=@twboard,twper=@twper,degreecol=@degreecol,degreeyear=@degreeyear,degreeboard=@degreeboard,degreeper=@degreeper,postcol=@postcol,postyear=@postyear,postboard=@postboard,postper=@postper,techskills=@techskills,course1=@course1,course2=@course2,course3=@course3,course4=@course4,interncom1=@interncom1,intern1=@intern1,internwork1=@internwork1,interncom2=@interncom2,intern2=@intern2,internwork2=@internwork2,interncom3=@interncom3,intern3=@intern3,internwork3=@internwork3,proj1=@proj1,proj1tech=@proj1tech,proj1desc=@proj1desc,proj2=@proj2,proj2tech=@proj2tech,proj2desc=@proj2desc,proj3=@proj3,proj3tech=@proj3tech,proj3desc=@proj3desc where sapId=@sapID";


            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@mname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox3.Text);
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
            cmd.Parameters.AddWithValue("@sapId", TextBox48.Text);


            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Record Has Been Updated Successfully";


        }
    }
}