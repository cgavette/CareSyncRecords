using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareSyncRecords
{
    public partial class frmSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetButton_Click(object sender, EventArgs e)
        {
            txtSignUpID.Text = string.Empty;
            txtSignUpPassword.Text = string.Empty;
            txtSignUpReenter.Text = string.Empty;
        }

        protected void btnSignUpButton_Click(object sender, EventArgs e)
        {
            if (txtSignUpPassword.Text != txtSignUpReenter.Text)
            {
                lblStatusBar.ForeColor = System.Drawing.Color.Red;
                lblStatusBar.Text = "Passwords do not match.";
                txtSignUpPassword.Text = string.Empty;
                txtSignUpReenter.Text = string.Empty;

            }
            else if (txtSignUpID.Text != "" && txtSignUpPassword.Text != "" && txtSignUpReenter.Text != "")
            {

                // Defines a connection to database
                OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0; Data Source=" +
              HostingEnvironment.MapPath(@"/Databases/") + "PatientDB.mdb; Persist Security Info=False;");
                conn.Open();
                OleDbCommand command = conn.CreateCommand();
                string strSQL;
                strSQL = "Insert into tblLogin (ID, PSWD) values ('" +
                    txtSignUpID.Text + "', '" + txtSignUpPassword.Text + "')";
                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;
                try
                {
                    command.ExecuteNonQuery();
                    Response.Redirect("frmHome.aspx");
                }
                catch (System.Data.OleDb.OleDbException)
                {
                    lblStatusBar.Text = "There is already an account with that ID.";
                }
                finally
                {
                    conn.Close();
                }
            }
            else
            {
                lblStatusBar.ForeColor = System.Drawing.Color.Red;
                lblStatusBar.Text = "Please enter mandatory details!";
            }
        }
    }
}