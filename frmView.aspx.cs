using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareSyncRecords
{
    public partial class frmView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearchPatients_Click(object sender, EventArgs e)
        {
            PatInfoDataSource.FilterExpression = "PatName Like '%" + txtSearchPatients.Text + "%'";
        }
    }
}