using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffInformationLeaveDetailsView : System.Web.UI.Page
{
    /*
     * 
     * Table Name: StaffName
     * Column Used: "emp_code", "first_name", "middle_name", "last_name"
     * 
     */
    SqlConnection connection_StaffName;
    SqlCommand command_StaffName;
    SqlDataReader reader_StaffName;



    /*
     * 
     * Table Name: StaffPersonalDetails
     * Column Used: "DOB", "contact_no1", "join_date", "blood_group"
     * 
     */
    SqlConnection connection_StaffPersonalDetails;
    SqlCommand command_StaffPersonalDetails;
    SqlDataReader reader_StaffPersonalDetails;




    /*
     * 
     * Table Name:StaffOfficialDetails
     * Column Used: "designation", "pf_no"
     * 
     */
    SqlConnection connection_StaffOfficialDetails;
    SqlCommand command_StaffOfficialDetails;
    SqlDataReader reader_StaffOfficialDetails;


    SqlConnection connection_LeaveDetailsViewForm;
    SqlCommand command_LeaveDetailsViewForm;
    SqlDataReader reader_LeaveDetailsViewForm;

    SqlConnection connection_LeaveDetails;
    SqlCommand command_LeaveDetails;
    SqlDataReader reader_LeaveDetails;

    protected void Page_Load(object sender, EventArgs e)
    {
        String EmpCode = Request.QueryString["StaffNameHyperLink"];

        connection_StaffName = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrialN.6"].ToString());
        command_StaffName = new SqlCommand("SELECT first_name,middle_name,last_name FROM StaffName WHERE emp_code = '" + EmpCode + "'", connection_StaffName);

        connection_StaffPersonalDetails = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrialN.6"].ToString());
        command_StaffPersonalDetails = new SqlCommand("SELECT DOB,contact_no1,join_date,blood_group FROM StaffPersonalDetails WHERE emp_code = '" + EmpCode + "'", connection_StaffPersonalDetails);

        connection_StaffOfficialDetails = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrialN.6"].ToString());
        command_StaffOfficialDetails = new SqlCommand("SELECT designation,pf_no FROM StaffOfficialDetails WHERE emp_code = '" + EmpCode + "'", connection_StaffOfficialDetails);

        connection_LeaveDetails = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrialN.6"].ToString());
        command_LeaveDetails = new SqlCommand("SELECT from_date,to_date,reason_of_leave,no_of_leave_days,leave_category FROM StaffLeaveDetails1 WHERE emp_code = '" + EmpCode + "'", connection_LeaveDetails);

        connection_StaffName.Open();
        connection_StaffPersonalDetails.Open();
        connection_StaffOfficialDetails.Open();
        connection_LeaveDetails.Open();


        reader_StaffName = command_StaffName.ExecuteReader();
        reader_StaffPersonalDetails = command_StaffPersonalDetails.ExecuteReader();
        reader_StaffOfficialDetails = command_StaffOfficialDetails.ExecuteReader();
        reader_LeaveDetails = command_LeaveDetails.ExecuteReader();

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


        while (reader_LeaveDetails.Read())
        {
            TableRow newRow = new TableRow();

            TableCell FromDate1 = new TableCell();
            TableCell ToDate1 = new TableCell();
            TableCell ReasonOfLeave1 = new TableCell();
            TableCell LeaveCategory1 = new TableCell();
            TableCell NoOfLeaveDays1 = new TableCell();

            FromDate1.Text = reader_LeaveDetails["from_date"].ToString();
            ToDate1.Text = reader_LeaveDetails["to_date"].ToString();
            ReasonOfLeave1.Text = reader_LeaveDetails["reason_of_leave"].ToString();
            LeaveCategory1.Text = reader_LeaveDetails["leave_category"].ToString();
            NoOfLeaveDays1.Text = reader_LeaveDetails["no_of_leave_days"].ToString();


            newRow.Controls.Add(FromDate1);
            newRow.Controls.Add(ToDate1);
            newRow.Controls.Add(ReasonOfLeave1);
            newRow.Controls.Add(NoOfLeaveDays1);
            newRow.Controls.Add(LeaveCategory1);

            LeaveDetailsContentTable.Controls.Add(newRow);
        }

    }
}