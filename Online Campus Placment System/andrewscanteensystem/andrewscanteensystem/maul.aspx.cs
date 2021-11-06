using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Configuration;


namespace andrewscanteensystem
{
    

    public partial class maul : System.Web.UI.Page
    {
        static int totalemailsent;
        protected void Page_Load(object sender, EventArgs e)
        {
            countRegistration();
            totalemailsent = 0;

        }
        private void countRegistration()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String myquery = "Select count(*) from stuData";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            Label2.Text = ds.Tables[0].Rows[0][0].ToString();
            con.Close();
        }


        private void sendemail(String emailid, String cname, String subject, String message)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("andrewscanteen@gmail.com", "andrewscanteen37");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = subject;
            msg.Body = "Dear " + cname + " " + message + "\n\n\nThanks & Regards\n Placement Team";
            string toaddress = emailid;
            msg.To.Add(toaddress);
            string fromaddress = "Placement team <placecomnmims@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
                totalemailsent = totalemailsent + 1;

            }
            catch
            {
                throw;
            }
        }
       
protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String myquery = "Select * from stuData";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int rowcounter = ds.Tables[0].Rows.Count;
            int i = 0;
            while (i < rowcounter)
            {

                sendemail(ds.Tables[0].Rows[i]["email"].ToString(), ds.Tables[0].Rows[0]["fname"].ToString(), TextBox1.Text, TextBox2.Text);
                i++;
            }
            Label1.Text = "Total Emails " + totalemailsent + " Sent to Students Successfully";
        }
    }
    
}