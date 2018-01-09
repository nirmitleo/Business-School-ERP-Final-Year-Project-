using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffInformationBasicSalaryDetailView : System.Web.UI.Page
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

    SqlConnection connection_BasicSalaryDetails;
    SqlCommand command_BasicSalaryDetails;
    SqlDataReader reader_BasicSalaryDetails;


    protected void Page_Load(object sender, EventArgs e)
    {

        String EmpCode = Request.QueryString["StaffNameHyperLink"];

        connection_StaffName = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrialN.6"].ToString());
        command_StaffName = new SqlCommand("SELECT first_name,middle_name,last_name FROM StaffName WHERE emp_code = '" + EmpCode + "'", connection_StaffName);

        connection_StaffPersonalDetails = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrialN.6"].ToString());
        command_StaffPersonalDetails = new SqlCommand("SELECT DOB,contact_no1,join_date,blood_group FROM StaffPersonalDetails WHERE emp_code = '" + EmpCode + "'", connection_StaffPersonalDetails);

        connection_StaffOfficialDetails = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrialN.6"].ToString());
        command_StaffOfficialDetails = new SqlCommand("SELECT designation,pf_no FROM StaffOfficialDetails WHERE emp_code = '" + EmpCode + "'", connection_StaffOfficialDetails);

        connection_BasicSalaryDetails = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrialN.6"].ToString());
        command_BasicSalaryDetails = new SqlCommand("SELECT month,year,basic_salary,duty_hours FROM BasicSalaryDetails WHERE emp_code = '" + EmpCode + "'", connection_BasicSalaryDetails);
        
        connection_StaffName.Open();
        connection_StaffPersonalDetails.Open();
        connection_StaffOfficialDetails.Open();
        connection_BasicSalaryDetails.Open();

        reader_StaffName = command_StaffName.ExecuteReader();
        reader_StaffPersonalDetails = command_StaffPersonalDetails.ExecuteReader();
        reader_StaffOfficialDetails = command_StaffOfficialDetails.ExecuteReader();
        reader_BasicSalaryDetails = command_BasicSalaryDetails.ExecuteReader();

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


        
          while (reader_BasicSalaryDetails.Read())
          {
            //Initializing the TableRow and TableCell//

               TableRow newRow = new TableRow();

               TableCell BasicSalary = new TableCell();
               TableCell DutyHours = new TableCell();
               TableCell Months = new TableCell();
               TableCell Years = new TableCell();

                BasicSalary.Text = reader_BasicSalaryDetails["basic_salary"].ToString();
                DutyHours.Text=reader_BasicSalaryDetails["duty_hours"].ToString();
                Months.Text = reader_BasicSalaryDetails["months"].ToString();
                Years.Text=reader_BasicSalaryDetails["years"].ToString();

                newRow.Controls.Add(BasicSalary);
                newRow.Controls.Add(DutyHours);
                newRow.Controls.Add(Months);
                newRow.Controls.Add(Years);

                BasicSalaryDetailsContentTable.Controls.Add(newRow);
        }
    }
}

