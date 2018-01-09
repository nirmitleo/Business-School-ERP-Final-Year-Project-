using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentDetails : System.Web.UI.Page
{
    SqlConnection connection;
    SqlCommand command;
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {
        
            connection = new SqlConnection(ConfigurationManager.ConnectionStrings["KohinoorDatabaseTrial1"].ToString());
            connection.Open();
            //StatusCheck.Text = connection.State.ToString();
            command = new SqlCommand("SELECT * FROM student_details", connection);
            reader = command.ExecuteReader();

            while(reader.Read())
            {
                //Initializing the TableRow and TableCell//
                TableRow newRow = new TableRow();
                TableCell EnqNo = new TableCell();
                TableCell RegNo = new TableCell();
                TableCell StudentName = new TableCell();
                TableCell EnqDate = new TableCell();
                TableCell Guardian = new TableCell();
                TableCell DOB = new TableCell();
                TableCell ContactNo = new TableCell();
                TableCell Course = new TableCell();
                TableCell AdmissionType = new TableCell();
                TableCell TransferredFrm = new TableCell();

                EnqNo.Text = reader["enq_id"].ToString();
                RegNo.Text = reader["reg_id"].ToString();
                StudentName.Text = reader["first_name"].ToString() + " " + reader["middle_name"].ToString() + " " + reader["last_name"].ToString();
                EnqDate.Text = reader["enq_date"].ToString();
                Guardian.Text = reader["guardian"].ToString();
                DOB.Text = reader["DOB"].ToString();
                ContactNo.Text = reader["contact_no1"].ToString() + " / " + reader["contact_no2"].ToString();
                Course.Text = reader["course"].ToString();
                AdmissionType.Text = reader["admission_type"].ToString();
                TransferredFrm.Text = reader["transferred_from"].ToString();


                newRow.Controls.Add(EnqNo);
                newRow.Controls.Add(RegNo);
                newRow.Controls.Add(StudentName);
                newRow.Controls.Add(EnqDate);
                newRow.Controls.Add(Guardian);
                newRow.Controls.Add(DOB);
                newRow.Controls.Add(ContactNo);
                newRow.Controls.Add(Course);
                newRow.Controls.Add(AdmissionType);
                newRow.Controls.Add(TransferredFrm);

                StudentDetailsContentTable.Controls.Add(newRow);
            
            }
        

    }
}