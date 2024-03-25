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
    public partial class frmEditDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddRecord_Click(object sender, EventArgs e)
        {
            // Defines a connection to database

            OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0; Data Source=" +
              HostingEnvironment.MapPath(@"/Databases/") + "PatientDB.mdb; Persist Security Info=False;");

            try
            {
                conn.Open();
                OleDbCommand command = conn.CreateCommand();
                string strSQL;

                // Change to your db
                strSQL = "INSERT INTO tblPatInfo (PatName, PatAge, PatStaying, PatGender, PatRoomNum) values ('" +

                  txtPatName.Text + "', '" + txtPatAge.Text + "', '" + txtPatStaying.Text + 
                  "', '" + txtPatGender.Text + "', '" + txtPatRoomNum.Text + "')";

                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;
                command.ExecuteNonQuery();

                lblStatusBar.Text = "The data was added.";
                lblStatusBar.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception error)
            {
                lblStatusBar.Text = "The data was not added. Please check your values and try again. Error: " + error.Message;
                lblStatusBar.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                conn.Close();
                PatInfoTable.DataBind(); // Refesh your dataset

            }
        }
    }
}