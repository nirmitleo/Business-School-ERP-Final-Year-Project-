using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffWorkProfileSystem : System.Web.UI.Page
{
    SqlConnection connection;
    SqlCommand command_StaffPersonalDetails;
    SqlCommand command_StaffOfficialDetails;
    SqlCommand command_StaffInformation;
    SqlCommand command_JobDetails;
    SqlCommand command_StaffName;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SaveEnquiry_Click(object sender, EventArgs e)
    {

       
    }
}