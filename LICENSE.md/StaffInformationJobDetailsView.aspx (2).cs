using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffInformationJobDetailsView : System.Web.UI.Page
{

    SqlConnection connection_StaffName;
    SqlCommand command_StaffName;
    SqlDataReader reader_StaffName;

    SqlConnection connection_StaffPersonalDetails;
    SqlCommand command_StaffPersonalDetails;
    SqlDataReader reader_StaffPersonalDetails;

    SqlConnection connection_StaffOfficialDetails;
    SqlCommand command_StaffOfficialDetails;
    SqlDataReader reader_StaffOfficialDetails;

    SqlConnection connection_JobDetails;
    SqlCommand command_JobDetails;
    SqlDataReader reader_JobDetails;

    protected void Page_Load(object sender, EventArgs e)
    {

        String EmpCode = Request.QueryString["StaffNameHyperLink"];

        connection_StaffName = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrialN.6"].ToString());
        command_StaffName = new SqlCommand("SELECT first_name,middle_name,last_name FROM StaffName WHERE emp_code = '" + EmpCode + "'", connection_StaffName);

        connection_StaffPersonalDetails = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrialN.6"].ToString());
        command_StaffPersonalDetails = new SqlCommand("SELECT DOB,contact_no1,join_date,blood_group FROM StaffPersonalDetails WHERE emp_code = '" + EmpCode + "'", connection_StaffPersonalDetails);

        connection_StaffOfficialDetails = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrialN.6"].ToString());
        command_StaffOfficialDetails = new SqlCommand("SELECT designation,pf_no FROM StaffOfficialDetails WHERE emp_code = '" + EmpCode + "'", connection_StaffOfficialDetails);

        connection_JobDetails = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrialN.6"].ToString());
        command_JobDetails = new SqlCommand("SELECT job_no,course_name,batch_timings,year,month FROM JobDetails WHERE emp_code = '" + EmpCode + "'", connection_JobDetails);
        


        connection_StaffName.Open();
        connection_StaffPersonalDetails.Open();
        connection_StaffOfficialDetails.Open();
        connection_JobDetails.Open();

        reader_StaffName = command_StaffName.ExecuteReader();
        reader_StaffPersonalDetails = command_StaffPersonalDetails.ExecuteReader();
        reader_StaffOfficialDetails = command_StaffOfficialDetails.ExecuteReader();
        reader_JobDetails = command_JobDetails.ExecuteReader();

        while (reader_StaffName.Read() && reader_StaffPersonalDetails.Read() && reader_StaffOfficialDetails.Read())
        {
            StaffCode.Text = EmpCode;
            StaffName.Text = reader_StaffName["first_name"].ToString() + " " + reader_StaffName["middle_name"].ToString() + " " + reader_StaffName["last_name"].ToString();
            DOB.Text = reader_StaffPersonalDetails["DOB"].ToString();
            ContactNo.Text = reader_StaffPersonalDetails["contact_no1"].ToString();
            DateOfJoin.Text = reader_StaffPersonalDetails["join_date"].ToString();
            Designation.Text = reader_StaffOfficialDetails["designation"].ToString();
            PfNo.Text = reader_StaffOfficialDetails["pf_no"].ToString();
            BloodGroup.Text = reader_StaffPersonalDetails["blood_group"].ToString();
        }

          while (reader_JobDetails.Read())

         {
            //Initializing the TableRow and TableCell//

            TableRow newRow = new TableRow();

          
            TableCell JobNo = new TableCell();
            TableCell CourseName = new TableCell();
            TableCell BatchTiming = new TableCell();
            TableCell Year = new TableCell();
            TableCell Month = new TableCell();

            
            JobNo.Text = reader_JobDetails["job_no"].ToString();
            CourseName.Text = reader_JobDetails["course_name"].ToString();
            BatchTiming.Text=reader_JobDetails["batch_timing"].ToString();
            Year.Text = reader_JobDetails["total_work_years"].ToString();
            Month.Text=reader_JobDetails["total_work_months"].ToString();

            newRow.Controls.Add(JobNo);
            newRow.Controls.Add(CourseName);
            newRow.Controls.Add(BatchTiming);
            newRow.Controls.Add(Year);
            newRow.Controls.Add(Month);

            JobDetailsContentTable.Controls.Add(newRow);
        }
     }
}
