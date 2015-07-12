using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace JooteyWala.Web.General
{
    public partial class Login : System.Web.UI.Page
    {
        Customer cust = new Customer();
        UserDetailsDL UD = new UserDetailsDL();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            cust.Password = txtPassword.Text;
            //cust.Username = txtUsername.Text;
            cust.Email = txtEmail.Text;

            ds = UD.GetLoginDetails(cust);

            if (ds.Tables[0].Rows.Count >= 1)
            {
                lblMessage.Visible = false;
                Response.Redirect("Home.aspx");

            }
            else
            {
                lblMessage.Visible = true;
            }
            //if(username pass eligible)
            // redirect to home page with 'welcome firstname' // home.aspx
            //session userid
            //
            // else 
            //username password invalid in popup

        }
        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}