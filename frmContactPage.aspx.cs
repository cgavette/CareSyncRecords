using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Remoting.Contexts;

namespace CareSyncRecords
{
    public partial class frmExtraPage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelButton_Click(object sender, EventArgs e)
        {
            lblContactFormLabel.ForeColor = System.Drawing.Color.Black;
            lblContactFormLabel.Text = "Connect using form below: (*)Required";
            txtComplaintName.Text = string.Empty;
            txtComplaintEmail.Text = string.Empty;
            txtComplaintText.Text = string.Empty;
            calComplaintCaledner.SelectedDate = DateTime.Now;
            fileComplaintFile.Attributes.Clear();
            chkComplaintCheckBox.Checked = false;
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (txtComplaintName.Text != "" && txtComplaintEmail.Text != "" && txtComplaintText.Text != "")
            {
                OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0; Data Source=" +
              HostingEnvironment.MapPath(@"/Databases/") + "PatientDB.mdb; Persist Security Info=False;");
                conn.Open();
                OleDbCommand command = conn.CreateCommand();
                string strSQL;
                strSQL = "Insert into tblContact (ContactName, ContactEmail, ContactText, ContactDate, ContactFileName, ContactIsUser) values ('" +
                    txtComplaintName.Text + "', '" + txtComplaintEmail.Text + "', '" + txtComplaintText.Text + "', '" + calComplaintCaledner.SelectedDate.ToString() + "', '" 
                    + fileComplaintFile.FileName.ToString() + "', '" + chkComplaintCheckBox.Checked.ToString() + "')";
                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;
                try
                {
                    command.ExecuteNonQuery();
                    lblContactFormLabel.ForeColor = System.Drawing.Color.Green;
                    lblContactFormLabel.Text = "Data was added Successfully.";
                }
                catch (System.Data.OleDb.OleDbException)
                {
                    lblContactFormLabel.ForeColor = System.Drawing.Color.Red;
                    lblContactFormLabel.Text = "There is already a contact with that name.";
                }
                finally
                {
                    conn.Close();
                }
            }
            else
            {
                lblContactFormLabel.ForeColor = System.Drawing.Color.Red;
                lblContactFormLabel.Text = "Please fill in all required fields. (*)Required";
            }
        }
    }
}