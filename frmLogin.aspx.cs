using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareSyncRecords
{
    public partial class frmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoginButton_Click(object sender, EventArgs e)
        {

            if (txtLoginPassword.Text != "" && txtLoginID.Text != "")
            {
                OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0; Data Source=" +
              HostingEnvironment.MapPath(@"/Databases/") + "PatientDB.mdb; Persist Security Info=False;");

                conn.Open();
                string strSQL = "Select Count(*) from tblLogin Where ID=? and PSWD =?";
                OleDbCommand cmd = new OleDbCommand(strSQL, conn);
                cmd.Parameters.AddWithValue("@p1", txtLoginID.Text);
                cmd.Parameters.AddWithValue("@p2", txtLoginPassword.Text);  // <- is this a variable or a textbox?

                int result = (int)cmd.ExecuteScalar();
                conn.Close();

                if (result > 0)
                {
                    // Success - Redirect to Home Page
                    Response.Redirect("frmHome.aspx");
                }
                else
                {
                    // Fail - Display message
                    lblStatusBar.Text = "Invalid Login please check username and password";
                }
            }
            else
            {
                lblStatusBar.Text = "Please enter the user name and password!";
            }

        }
    }
}