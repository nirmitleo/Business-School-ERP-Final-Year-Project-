using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EnquiryRegistrationForm : System.Web.UI.Page
{
    SqlConnection connection;
    SqlCommand command_StudentDetails;
    SqlCommand command_EnquiryDetails;
    SqlCommand command_ParentAndGuardianDetails;
    SqlCommand command_CourseDetails;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SaveEnquiry_Click(object sender, EventArgs e)
    {
     
        connection = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrial2"].ToString());
        connection.Open();
        command_EnquiryDetails = new SqlCommand("INSERT INTO StudentEnquiryDetails(enq_mode,enq_media,enq_date) VALUES ('"+EnquiryMode.SelectedItem.Text+"', '"+EnquiryMedia.SelectedItem.Text+"', '12/12/2013')");

        command_StudentDetails = new SqlCommand("INSERT INTO StudentDetails(first_name,middle_name,last_name,educational_qualification,DOB,gender,address,religion,state,city,taluka,contact_no1,contact_no2,email,employment_status,employment_status_remark,admission_type) VALUES ('"+FirstName.Text+"', '"+MiddleName.Text+"', '"+LastName.Text+"', '"+EducationalQualification.SelectedItem.Text+"', '12/12/31', '"+Gender.SelectedItem.Text+"', '"+Address.Text+"', '"+Religion.SelectedItem.Text+"', '"+State.SelectedItem.Text+"', '"+CityDistrict.SelectedItem.Text+"', '"+TalukaTown.SelectedItem.Text+"', '"+Contact1.Text+"', '"+Contact2.Text+"', '"+EMail.Text+"', '"+EmploymentStatus.SelectedItem.Text+"', '"+EmploymentStatusRemark.Text+"', 'Registered')", connection);
       
        command_ParentAndGuardianDetails = new SqlCommand("INSERT INTO ParentOccupationDetails(name,occupation,monthly_family_income) VALUES ( '" + Name.Text + "', '" + Occupation.Text + "', '" + MonthlyFamilyIncome.Text + "')");
       
        //command_CourseDetails = new SqlCommand("INSERT INTO course_details VALUES()

        command_StudentDetails.ExecuteNonQuery();
        

        connection.Close();

    }
}