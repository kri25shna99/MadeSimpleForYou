using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace App1
{
    public partial class Service : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["App1ConStr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string FirstName = fstnm.Text;
            string LastName = lstnm.Text;
            string PhoneNumber = phn.Text;
            string EmailAddress = eml.Text;
            string Needs = need.Text;
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("Insert into contactus (FirstName,LastName,PhoneNumber,Email,Need) values (@FirstName,@LastName,@PhoneNumber,@EmailAddress,@Needs)",con);
                cmd.Parameters.AddWithValue("@FirstName",FirstName);
                cmd.Parameters.AddWithValue("@LastName",LastName);
                cmd.Parameters.AddWithValue("@PhoneNumber",PhoneNumber);
                cmd.Parameters.AddWithValue("@EmailAddress",EmailAddress);
                cmd.Parameters.AddWithValue("@Needs",Needs);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Close();
                //MsgBox("! your message !", this.Page, this);
                send_email();
                ShowMessage("Registered Successfully");
                clear();
            }
            catch(Exception ex)
            {
                ShowMessage(ex.Message);
            }
        }
        void ShowMessage(string msg)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
        }
        void clear()
        {
            fstnm.Text=string.Empty ;
            lstnm.Text = string.Empty;;
            phn.Text=string.Empty;
            eml.Text=string.Empty;
            need.Text=string.Empty;
        }
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());

        }
        void send_email()
        {try
            {
                MailMessage msg = new MailMessage();
                MailAddress sender = new MailAddress(ConfigurationManager.AppSettings["smtpUser"]);
                MailAddress receiver = new MailAddress(eml.Text);
                SmtpClient smtp = new SmtpClient()
                {
                    Host = ConfigurationManager.AppSettings["smtpServer"],
                    Port = Convert.ToInt32(ConfigurationManager.AppSettings["smtpPort"]),
                    EnableSsl = false,
                    Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["smtpUser"], ConfigurationManager.AppSettings["smtpPass"])
                };
                msg.From = sender;
                msg.To.Add(receiver);
                msg.Subject = "Inquiry Registration";
                msg.Body = "Hello Sir/Ma'm," + "<br><br>" + "First Name - " + fstnm.Text + "<br>" + "Last Name - " + lstnm.Text + "<br>" + "Contact Number - " + phn.Text + "<br>" + "Email - " + eml.Text + "<br>" + "Needs - " + need.Text + "<br><br>" + "Thank You!";
                msg.IsBodyHtml = true;
                smtp.Send(msg);//msg will send from, receiver, subject and body in email.
                ShowMessage("Email has been sent Successfully");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}