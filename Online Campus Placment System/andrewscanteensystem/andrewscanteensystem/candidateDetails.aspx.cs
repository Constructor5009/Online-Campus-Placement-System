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
    public partial class candidateDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["sapId"] != null)
            {
                String complaintid = Request.QueryString["sapId"];
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
                String myquery = "Select * from stuData where sapId=" + complaintid;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Label1.Text = "Data Found";
                    Label1.Text = ds.Tables[0].Rows[0]["sapId"].ToString();
                    Label2.Text = ds.Tables[0].Rows[0]["fname"].ToString();
                    Label3.Text = ds.Tables[0].Rows[0]["mname"].ToString();
                    Label4.Text = ds.Tables[0].Rows[0]["lname"].ToString();
                    Label5.Text = ds.Tables[0].Rows[0]["age"].ToString();
                    Label6.Text = ds.Tables[0].Rows[0]["dob"].ToString();
                    Label7.Text = ds.Tables[0].Rows[0]["email"].ToString();
                    Label9.Text = ds.Tables[0].Rows[0]["tschool"].ToString();
                    Label10.Text = ds.Tables[0].Rows[0]["tboard"].ToString();
                    Label11.Text = ds.Tables[0].Rows[0]["tyear"].ToString();
                    Label12.Text = ds.Tables[0].Rows[0]["tper"].ToString();
                    Label13.Text = ds.Tables[0].Rows[0]["twcol"].ToString();
                    Label14.Text = ds.Tables[0].Rows[0]["twboard"].ToString();
                    Label15.Text = ds.Tables[0].Rows[0]["twyear"].ToString();
                    Label16.Text = ds.Tables[0].Rows[0]["twper"].ToString();
                    Label17.Text = ds.Tables[0].Rows[0]["degreecol"].ToString();
                    Label18.Text = ds.Tables[0].Rows[0]["degreeboard"].ToString();
                    Label19.Text = ds.Tables[0].Rows[0]["degreeyear"].ToString();
                    Label20.Text = ds.Tables[0].Rows[0]["degreeper"].ToString();
                    Label21.Text = ds.Tables[0].Rows[0]["postcol"].ToString();
                    Label22.Text = ds.Tables[0].Rows[0]["postboard"].ToString();
                    Label23.Text = ds.Tables[0].Rows[0]["postyear"].ToString();
                    Label24.Text = ds.Tables[0].Rows[0]["postper"].ToString();
                    Label25.Text = ds.Tables[0].Rows[0]["techskills"].ToString();
                    Label26.Text = ds.Tables[0].Rows[0]["course1"].ToString();
                    Label27.Text = ds.Tables[0].Rows[0]["course2"].ToString();
                    Label28.Text = ds.Tables[0].Rows[0]["course3"].ToString();
                    Label29.Text = ds.Tables[0].Rows[0]["course4"].ToString();
                    Label30.Text = ds.Tables[0].Rows[0]["interncom1"].ToString();
                    Label31.Text = ds.Tables[0].Rows[0]["intern1"].ToString();
                    Label32.Text = ds.Tables[0].Rows[0]["internwork1"].ToString();
                    Label33.Text = ds.Tables[0].Rows[0]["interncom2"].ToString();
                    Label34.Text = ds.Tables[0].Rows[0]["intern2"].ToString();
                    Label35.Text = ds.Tables[0].Rows[0]["internwork2"].ToString();
                    Label36.Text = ds.Tables[0].Rows[0]["interncom3"].ToString();
                    Label37.Text = ds.Tables[0].Rows[0]["intern3"].ToString();
                    Label38.Text = ds.Tables[0].Rows[0]["internwork3"].ToString();
                    Label39.Text = ds.Tables[0].Rows[0]["proj1"].ToString();
                    Label40.Text = ds.Tables[0].Rows[0]["proj1tech"].ToString();
                    Label41.Text = ds.Tables[0].Rows[0]["proj1desc"].ToString();
                    Label42.Text = ds.Tables[0].Rows[0]["proj2"].ToString();
                    Label43.Text = ds.Tables[0].Rows[0]["proj2tech"].ToString();
                    Label44.Text = ds.Tables[0].Rows[0]["proj2desc"].ToString();
                    Label45.Text = ds.Tables[0].Rows[0]["proj3"].ToString();
                    Label46.Text = ds.Tables[0].Rows[0]["proj3tech"].ToString();
                    Label47.Text = ds.Tables[0].Rows[0]["proj3desc"].ToString();




                }
                else
                {
                    Response.Redirect("feedbackadmin.aspx");

                }
                con.Close();
            }
        }
    }
}