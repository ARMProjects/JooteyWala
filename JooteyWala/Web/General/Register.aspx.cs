using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;

namespace JooteyWala.Web.General
{
    public partial class Register : System.Web.UI.Page
    {
        Customer cust = new Customer();
        UserDetailsDL UserDetailsDL = new UserDetailsDL();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            GenerateRegistration();
        }

        public void GenerateRegistration()
        {
            cust.FirstName = txtFirstName.Text;
            cust.LastName = txtLastName.Text;
            cust.Email = txtEmail.Text;
            cust.Username = txtUsername.Text;
            cust.Password = txtPassword.Text;

            int intresult = 0;
            dt = UserDetailsDL.CheckLoginDetails(cust);

            if (dt.Rows.Count >= 1)
            {
                lblMessage.Visible = true;

            }
            else
            {
                intresult = UserDetailsDL.GenerateRegistration(cust);
                lblMessage.Visible = false;
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "Information submited successfully");
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "err_msg", "alert('Information submited successfully');", true);
                GenerateMail();
                // Response.Redirect("Login.aspx");
            }
            // return intresult;
        }

        public void GenerateMail()
        {

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add("projectrefer@gmail.com");
            mail.From = new MailAddress("projectrefer@gmail.com", "Email head", System.Text.Encoding.UTF8);
            mail.Subject = "This mail is send from asp.net application";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "This is Email Body Text";
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("projectrefer@gmail.com", "referproject");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(mail);
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
             "err_msg",
             "alert('mail send successfully');",
             true);
                //  Page.RegisterStartupScript("UserMsg", "<script>alert('Successfully Send...');if(alert){ window.location='SendMail.aspx';}</script>");
            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
           "err_msg",
           "alert('mail send failed');",
           true);
                // Page.RegisterStartupScript("UserMsg", "<script>alert('Sending Failed...');if(alert){ window.location='SendMail.aspx';}</script>");
            }
        }

    }
}