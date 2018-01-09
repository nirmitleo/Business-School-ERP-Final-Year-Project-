using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffRegistrationSystem : System.Web.UI.Page
{
    SqlConnection connection;
    SqlCommand command_StaffDetails;
    SqlCommand command_StaffInformation;
    SqlCommand command_JobDetails;
    SqlCommand command_StaffName;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SaveEnquiry_Click(object sender, EventArgs e)
    {

        connection = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrailN.5"].ToString());
        //   connection.Close();
        connection.Open();
        //command_EnquiryDetails = new SqlCommand("INSERT INTO student_enquiry_details(enq_mode,enq_media,enq_date) VALUES ( '" + EnquiryMode.SelectedItem.Text + "', '" + EnquiryMedia.SelectedItem.Text + "', 1234) ");

        //command_StaffDetails = new SqlCommand("INSERT INTO staff_personal_details(blood_group,gender,age,contact_no1,contact_no2,caste,religion,address,marital_status,join_date,email_id,state,city,taluka) VALUES ('" + BloodGroup.Text + "', '" + Gender.Text + "', '" + Age.Text + "', '" + ContactNo1.Text + "', '" + ContactNo2.Text + "', '" + Caste.Text + "', '" + Religion.Text + "', '" + Address.Text + "', '" + MaritialStatus.Text + "', '" + JoinDate.Text + "', '" + EMail.Text + "', '" + State.Text + "', '" + City.Text + "', '" + Taluka.Text + "')", connection);
        // command_StudentDetails = new SqlCommand("INSERT INTO student_details(enq_id,reg_id,first_name) VALUES ( '4009','5009','"+FirstName.Text+"');", connection);

        command_StaffDetails.ExecuteNonQuery();
        //command_ParentAndGuardianDetails = new SqlCommand("INSERT INTO parent_occupation_details(name,occupation,monthly_family_income) VALUES ( '" + Name.Text + "', '" + Occupation.Text + "', '" + MonthlyFamilyIncome.Text + "')");

        //  command_CourseDetails = new SqlCommand("INSERT INTO course_details VALUES()

        connection.Close();

    }
}