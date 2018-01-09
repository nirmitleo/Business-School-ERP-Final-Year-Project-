<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EnquiryRegistrationForm.aspx.cs" Inherits="EnquiryRegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Enquiry Registration Form</title>

           <style type="text/css">
            *
            {
                margin:0px;
                padding:0px;
            }
            
            body
            {
                font-family:Segoe UI;
            }
            
            
            div#KohinoorBanner
            {
                background-color:#004883;
                display:block;
                height:100px;
                position:relative;
                
            }
            div#KohinoorBanner img
            {
                position:absolute;
                left:15px;
                bottom:15px;
            }
            
            /* -------Styling the Horizontal Navigation Menu---------- */
            div#KohinoorNavigationMenu
            {
                /*outline:solid red 1px;*/
                height:30px;
                position:relative;
                top:1px;
                background-color:#980000;
                z-index:2;
            }
            
            ul#HorizontalNavigationMenu,ul#PayRollSubMenu,ul#MastersSubMenu,ul#EnquirySubMenu,ul#StudentDetailsSubMenu,ul#Account,ul#TellecallingSubMenu,ul#ReportsSubMenu,ul#LiveConversationSubMenu
            {
                list-style-type:none;
            }
            ul#HorizontalNavigationMenu a
            {
                text-decoration:none;
                display:block;
                width:125px;
                height:30px;
                background-color:#980000;
                color:white;
                line-height:30px;
                font-family:Sans-Serif;
                font-size:13px;
                outline:solid white 1px;
            }
            ul#HorizontalNavigationMenu li
            {
                position:relative;
                float:left;
                width:125px;
                display:block;
            }
            ul#HorizontalNavigationMenu ul#PayRollSubMenu
            {
                /*outline:solid blue 2px;*/
                position:relative;
                display:none;
                width:150px;
                top:1px;
            }
            ul#HorizontalNavigationMenu>li:hover ul#PayRollSubMenu
            {
                display:block;
            }
            
            ul#HorizontalNavigationMenu ul#PayRollSubMenu a
            {
                display:block;
                width:150px;
                background-color:#f89800;
            }
            ul#HorizontalNavigationMenu li:hover>a
            {
                background-color:#3064c8;
            }
            ul#HorizontalNavigationMenu ul#PayRollSubMenu li:hover>a
            {
                background-color:#f83000;
                display:block;
            }
            
            
            ul#HorizontalNavigationMenu ul#MastersSubMenu
            {
                /*outline:solid blue 2px;*/
                position:relative;
                display:none;
                width:150px;
                top:1px;
            }
            ul#HorizontalNavigationMenu ul#MastersSubMenu a
            {
                display:block;
                width:150px;
                background-color:#f89800;
            }
            ul#HorizontalNavigationMenu>li:hover ul#MastersSubMenu
            {
                display:block;
            }
            ul#HorizontalNavigationMenu ul#MastersSubMenu li:hover>a
            {
                background-color:#f83000;
                display:block;
            }
            
            
            ul#HorizontalNavigationMenu ul#EnquirySubMenu
            {
                /*outline:solid blue 2px;*/
                position:relative;
                display:none;
                width:150px;
                top:1px;
            }
            ul#HorizontalNavigationMenu ul#EnquirySubMenu a
            {
                display:block;
                width:150px;
                background-color:#f89800;
            }
            ul#HorizontalNavigationMenu>li:hover ul#EnquirySubMenu
            {
                display:block;
            }
            ul#HorizontalNavigationMenu ul#EnquirySubMenu li:hover>a
            {
                background-color:#f83000;
                display:block;
            }
            
           
            
            ul#HorizontalNavigationMenu ul#StudentDetailsSubMenu
            {
                /*outline:solid blue 2px;*/
                position:relative;
                display:none;
                width:150px;
                top:1px;
            }
            ul#HorizontalNavigationMenu ul#StudentDetailsSubMenu a
            {
                display:block;
                width:150px;
                background-color:#f89800;
            }
            ul#HorizontalNavigationMenu>li:hover ul#StudentDetailsSubMenu
            {
                display:block;
            }
            ul#HorizontalNavigationMenu ul#StudentDetailsSubMenu li:hover>a
            {
                background-color:#f83000;
                display:block;
            }
            
            
            /* -------Styling the Blue Gradient---------- */ 
            div#BlueGradient
            {
                position:absolute;
                display:block;
                height:30px;
                width:100%;
                border:solid blue 1px;
                z-index:-1;
            }
            
            
            
            
            
            
         	/*--------Styling the Staff Transfer Monitoring System--------*/
            div#EnquiryRegistrationFormDiv
            {
                display:block;
                position:absolute;
                width:100%;
                height:840px;
                top:200px;
                border:solid red 1px;
                background-color:#d0dcc0;
                z-index:0;
                
            }
            div#EnquiryRegistrationFormDiv div#EnquiryRegistrationFormBanner
            {
                display:block;
                height:30px;
                line-height:30px;
                color:white;
                background-color:#3098c8;
                text-align:center;
                font-family:Calibri;
                font-weight:bold;
            }
            
            
            div#EnquiryRegistrationFormDiv table tr td 
            {
                border-top:white solid 2px;
                border-bottom:solid white 2px;
                border-collapse:collapse;
                //height:35px;
                font-family:Segoe UI;
                color:#264f9f;
                font-size:11px;
                font-weight:bold;
            }
            div#EnquiryRegistrationFormDiv table#EnquiryDetails 
            {
                //outline:solid pink 2px;
                height:70px;   
            }
            div#EnquiryRegistrationFormDiv table#StudentDetails
            {
                height:350px;
            }
            div#EnquiryRegistrationFormDiv table#ParentsAndGuardianDetails
            {
                height:70px;
            }
            div#EnquiryRegistrationFormDiv table#CourseDetails
            {
                height:200px;
            }
            
            div#EnquiryRegistrationFormDiv table 
            {
                position:relative;
                width:100%;
                border-collapse:collapse;
            }
            div#EnquiryRegistrationFormDiv .BlueButton
            {
                background:#018788;
                height:30px;
                width:220px;
                color:white;
                border:solid white 2px;
                font-family:'Segoe UI';
                font-weight:bold;
                margin-left:150px;
            }
            div#EnquiryRegistrationFormDiv .BlueButton:hover
            {
                cursor:pointer;
            }

            div#Buttons
            {
                display:block;
                background-color:white;
                outline:solid red 3px;
            }
            
            div.SubTitleStyle
            {
                background-color:#62878d;
                color:white;
                display:block;
                height:25px;
                line-height:25px;
                font-family:Segoe UI;
                //border-top:solid white 2px;
                border-bottom:solid white 2px;
                padding-left:5px;
                font-size:12px;
                font-weight:bold;
            }
            
            div#EnquiryRegistrationFormContent label
            {
                padding-left:100px;
            }
            
            
            
            
       </style>

</head>
<body>
    <form id="EnquiryRegistrationForm1" runat="server">
    
         
        
        <!-- *************Kohinoor Banner****************** -->
    	<div id="KohinoorBanner">
        	<asp:Image runat="server" src="D:\Images\Kohinoor.jpg" AlternateKText="KohinoorLogo"></asp:Image>
            <div id="GoogleSearchSection"></div>
        </div>
        
        
        
        <!-- *************Kohinoor Horizontal Navigation Menu****************** -->
        <div id="KohinoorNavigationMenu">
        	<ul id="HorizontalNavigationMenu">
            	<li>
                    <a href="#">&nbsp;--Masters--</a>
                    <ul id="MastersSubMenu">
                    	<li><a href="#">&nbsp;>> Trade</a></li>
                        <li><a href="#">&nbsp;>> Course</a></li>
                        <li><a href="#">&nbsp;>> Batch</a></li>
                        <li><a href="#">&nbsp;>> Qualification</a></li>
                        <li><a href="#">&nbsp;>> Media</a></li>
                        <li><a href="#">&nbsp;>> Branch</a></li>
                        <li><a href="#">&nbsp;>> Class</a></li>
                        <li><a href="#">&nbsp;>> State</a></li>
                        <li><a href="#">&nbsp;>> City/District</a></li>
                        <li><a href="#">&nbsp;>> Taluka</a></li>
                        <li><a href="#">&nbsp;>> Syllabus Upload</a></li>
                        <li><a href="#">&nbsp;>> Budget</a></li>
                        <li><a href="#">&nbsp;>> Percentage</a></li>
                        <li><a href="#">&nbsp;>> Tax</a></li>
                        <li><a href="#">&nbsp;>> Account Heads</a></li>
                        <li><a href="#">&nbsp;>> Expense Budget</a></li>
                        <li><a href="#">&nbsp;>> Professional Fees</a></li>
                        <li><a href="#">&nbsp;>> Bank</a></li>
                        <li><a href="#">&nbsp;>> Designation</a></li>
                        <li><a href="#">&nbsp;>> Region</a></li>
                        <li><a href="#">&nbsp;>> E-Mail</a></li>
                        <li><a href="#">&nbsp;>> Branch Location</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">&nbsp;--Enquiry--</a>
                    <ul id="EnquirySubMenu">
                    	<li><a href="#">&nbsp;>> Registration</a></li>
                        <li><a href="#">&nbsp;>> Followup</a></li>
                        <li><a href="#">&nbsp;>> Old Student Registration</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">&nbsp;--Student Details--</a>
                    <ul id="StudentDetailsSubMenu">
                    	<li><a href="#">&nbsp;>> Student Photo</a></li>
                        <li><a href="#">&nbsp;>> Fee Details</a></li>
                        <li><a href="#">&nbsp;>> Attendance</a></li>
                        <li><a href="#">&nbsp;>> Internal Evaluation</a></li>
                        <li><a href="#">&nbsp;>> Final Evaluation</a></li>
                        <li><a href="#">&nbsp;>> Transfer</a></li>
                        <li><a href="#">&nbsp;>> Accept Transfer</a></li>
                        <li><a href="#">&nbsp;>> Fee Conversion</a></li>
                        <li><a href="#">&nbsp;>> Placement Details</a></li>
                    </ul>
                </li>
                <li><a href="#">&nbsp;--Account--</a></li>
                <li><a href="#">&nbsp;--Tellecalling--</a></li>
                <li>
                    <a href="#">&nbsp;--PayRoll--</a>
                    <ul id="PayRollSubMenu">
                        <li><a href="#">&nbsp;>> Staff Details</a></li>
                        <li><a href="#">&nbsp;>> Salary Details</a></li>
                        <li><a href="#">&nbsp;>> Staff Photo</a></li>
                        <li><a href="#">&nbsp;>> Work Profile</a></li>
                        <li><a href="#">&nbsp;>> Leave Details</a></li>
                        <li><a href="#">&nbsp;>> Attendance Details</a></li>
                        <li><a href="#">&nbsp;>> Staff Transfer</a></li>
                        <li><a href="#">&nbsp;>> Exit Interview</a></li>
                    </ul>
                </li>
                <li><a href="#">&nbsp;--Reports--</a></li>
                <li><a href="#">&nbsp;--Live Conversation--</a></li>
                <li><a href="#">&nbsp;--Logout--</a></li>
            </ul>
        </div>
        
        
        
        
        <!-- *************Kohinoor Blue Gradient****************** -->
        <div id="BlueGradient"> Blue Gradient</div>
        
        
        
        
        <!-- ************** Enquiry Registration Form ************** -->
        <div id="EnquiryRegistrationFormDiv">
        	<div id="EnquiryRegistrationFormBanner">
            	Enquiry Registration Form
            </div>
            <div id="EnquiryRegistrationFormContent">
                
                
                
                
                
                
                <!--********** Start of  ENQUIRY DETAILS Table*********** -->
            	<div class="SubTitleStyle" style="border-top:solid white 2px;">
            		ENQUIRY DETAILS
            	</div>
            	<asp:Table runat="server" id="EnquiryDetails">
                	<asp:TableRow></asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            
                            
                            <label for="EnquiryMode">Enquiry Mode</label>
                            <asp:DropDownList runat="server" name="EnquiryMode" ID="EnquiryMode">
                            	<asp:ListItem selected="true">Select</asp:ListItem>
                                <asp:ListItem value="Telephone">Telephone</asp:ListItem>
                                <asp:ListItem value="Walk In">Walk In</asp:ListItem>
                            </asp:DropDownList>*
                            
                            
                            <label for="EnquiryDate">Enquiry Date</label>
                            
                            
                            
                            <label for="EnquiryMedia">Enquiry Media</label>
                            <asp:DropDownList runat="server" name="EnquiryMedia" ID="EnquiryMedia">
                            	<asp:ListItem selected="true">Select</asp:ListItem>
                                <asp:ListItem value="BoardOutsideBranch">Board Outside Branch</asp:ListItem>
                                <asp:ListItem value="Friend">Friend</asp:ListItem>
                                <asp:ListItem value="Seminar">Seminar</asp:ListItem>
                                <asp:ListItem value="Poster">Poster</asp:ListItem>
                                <asp:ListItem value="Newspaper">Newspaper</asp:ListItem>
                                <asp:ListItem value="Television">Television</asp:ListItem>
                            </asp:DropDownList>*
                            
                            
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- ********* End of ENQUIRY DETAILS Table ************* -->
                
                
                
                
                
                
                <!-- ********* Start of STUDENT DETAILS Table *********** -->
                <div class="SubTitleStyle">
            		STUDENT DETAILS
            	</div>
                <asp:Table runat="server" id="StudentDetails">
                    <asp:TableRow></asp:TableRow>
                    <asp:TableRow>
                    	<asp:TableCell>
                        	<label for="FirstName">First Name</label>
                            <asp:TextBox runat="server" name="FirstName" ID="FirstName"></asp:TextBox>*
                            
                            
                            <label for="MiddleName">Middle Name</label>
                            <asp:TextBox runat="server" name="MiddleName" ID="MiddleName"></asp:TextBox>
                            
                            
                            <label for="LastName">Last Name</label>
                            <asp:TextBox runat="server" name="LastName" ID="LastName"></asp:TextBox>*
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                    	<asp:TableCell>
                            <label for="EducationalQualification">Educational Qualification</label>
                            <asp:DropDownList runat="server" name="EducationalQualification" ID="EducationalQualification">
                            	<asp:ListItem selected="True">Select</asp:ListItem>
                                <asp:ListItem value="SomeValue1">HSC Passed</asp:ListItem>
                                
                            </asp:DropDownList>*
                            
                            
                            <label for="DateOfBirth">Date of Birth</label>
                            <input type="date">
                            <!--< type="date" name="DateOfBirth">*-->
                            
                            
                            <label for="Age">Age</label>
                            <asp:TextBox runat="server" type="text" maxlength="2" name="Age" ID="Age"></asp:TextBox>
                            
                            
                            <label for="Gender">Gender</label>
                            <asp:DropDownList runat="server" name="Gender" ID="Gender">
                                <asp:ListItem selected="True">Select</asp:ListItem>
                            	<asp:ListItem value="Male">Male</asp:ListItem>
                                <asp:ListItem value="Female">Female</asp:ListItem>
                            </asp:DropDownList>*                            
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                    	<asp:TableCell>
                            <label for="Address">Address</label>
                        	<asp:TextBox runat="server" TextMode="MultiLine" maxlength="300" rows="4" cols="20" name="Address" ID="Address"></asp:TextBox>
                            
                            
                            
                            <label for="Religion">Religion</label>
                            <asp:DropDownList runat="server" name="Religion" ID="Religion">
                                <asp:ListItem selected="true">Select</asp:ListItem>
                            	<asp:ListItem value="Hindu">Hindu</asp:ListItem>
                                <asp:ListItem value="Muslim">Muslim</asp:ListItem>
                                <asp:ListItem value="Christian">Christian</asp:ListItem>
                                <asp:ListItem value="Jain">Jain</asp:ListItem>
                                <asp:ListItem value="Sikh">Sikh</asp:ListItem>
                                <asp:ListItem value="Buddhist">Buddhist</asp:ListItem>
                                <asp:ListItem value="Others">Others</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                    	<asp:TableCell>
                            <label for="State">State</label>
                            <asp:DropDownList runat="server" name="State" ID="State">
                            	<asp:ListItem value="AndhraPradesh">Andhra Pradesh</asp:ListItem>
                                <asp:ListItem value="ArunachalPradesh">Arunachal Pradesh</asp:ListItem>
                                <asp:ListItem value="Bihar">Bihar</asp:ListItem>
                                <asp:ListItem value="Chhattisgarh">Chhattisgarh</asp:ListItem>
                                <asp:ListItem value="Goa">Goa</asp:ListItem>
                                <asp:ListItem value="Gujarat">Gujarat</asp:ListItem>
                                <asp:ListItem value="Haryana">Haryana</asp:ListItem>
                                <asp:ListItem value="Himachal Pradesh">Himachal Pradesh</asp:ListItem>
                                <asp:ListItem value="Jammu and Kashmir">Jammu and Kashmir</asp:ListItem>
                                <asp:ListItem value="Jharkhand">Jharkhand</asp:ListItem>
                                <asp:ListItem value="Karnataka">Karnataka</asp:ListItem>
                                <asp:ListItem value="Kerala">Kerala</asp:ListItem>
                                <asp:ListItem value="Madhya Pradesh">Madhya Pradesh</asp:ListItem>
                                <asp:ListItem value="Maharashtra">Maharashtra</asp:ListItem>
                                <asp:ListItem value="Manipur">Manipur</asp:ListItem>
                                <asp:ListItem value="Meghalaya">Meghalaya</asp:ListItem>
                                <asp:ListItem value="Mizoram">Mizoram</asp:ListItem>
                                <asp:ListItem value="Nagaland">Nagaland</asp:ListItem>
                                <asp:ListItem value="Orissa">Orissa</asp:ListItem>
                                <asp:ListItem value="Punjab">Punjab</asp:ListItem>
                                <asp:ListItem value="Rajasthan">Rajasthan</asp:ListItem>
                                <asp:ListItem value="Sikkim">Sikkim</asp:ListItem>
                                <asp:ListItem value="Tamil Nadu">Tamil Nadu</asp:ListItem>
                                <asp:ListItem value="Tripura">Tripura</asp:ListItem>
                                <asp:ListItem value="Uttaranchal">Uttaranchal</asp:ListItem>
                                <asp:ListItem value="UttarPradesh">Uttar Pradesh</asp:ListItem>
                                <asp:ListItem value="WestBengal">West Bengal</asp:ListItem>
                            </asp:DropDownList>*
                            
                            
                            <label for="City/District">City/District</label>
                            <asp:DropDownList runat="server" name="City/District" ID="CityDistrict">
                            	<asp:ListItem value="">Mumbai</asp:ListItem>
                            </asp:DropDownList>*
                            
                            
                            
                            <label for="Taluka/Town">Taluka/Town</label>
                            <asp:DropDownList runat="server" name="Taluka/Town" ID="TalukaTown">
                            	<asp:ListItem value="">Thane</asp:ListItem>
                                <asp:ListItem value="">Kurla</asp:ListItem>
                                <asp:ListItem value="">Andheri</asp:ListItem>
                                <asp:ListItem value="">CST</asp:ListItem>
                                <asp:ListItem value="">Borivali</asp:ListItem>
                                <asp:ListItem value="">Navi Mumbai</asp:ListItem>
                                <asp:ListItem value="">Panvel</asp:ListItem>
                            </asp:DropDownList>*
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                    	<asp:TableCell>
                            <label for="Contact1">Contact I</label>
                            <asp:TextBox runat="server" type="text" name="Contact1" ID="Contact1"></asp:TextBox>
                            
                            
                            <label for="Contact2">Contact II</label>
                            <asp:TextBox runat="server" type="text" name="Contact2" ID="Contact2"></asp:TextBox>
                            
                            
                            <label for="E-Mail">E-Mail</label>
                            <asp:TextBox runat="server" type="text" name="E-Mail" ID="EMail"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                    	<asp:TableCell>
                            <label for="EmploymentStatus">Employment Status</label>
                            <asp:DropDownList runat="server" name="EmploymentStatus" ID="EmploymentStatus">
                            	<asp:ListItem selected="True">Select</asp:ListItem>
                                <asp:ListItem value="Working">Working</asp:ListItem>
                                <asp:ListItem value="NotWorking">Not Working</asp:ListItem>
                                <asp:ListItem value="Student">Student</asp:ListItem>
                                <asp:ListItem value="Others">Others</asp:ListItem>
                            </asp:DropDownList>*
                            
                            
                            <label for="EmploymentStatusRemark">Employment Status Remark</label>
                            <asp:TextBox runat="server" ID="EmploymentStatusRemark" name="EmploymentStatusRemark" rows="2" cols="7"></asp:TextBox>*
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- ******************** End of STUDENT DETAILS table ***************** -->
                
                
                
                
                
                <!-- *************Start of PARENTS AND GUARDIAN DETAILS table ************ -->
                <div class="SubTitleStyle">
            		PARENTS AND GUARDIAN DETAILS
            	</div>
            	<asp:Table runat="server" ID="ParentsAndGuardianDetails">
                	
                    <asp:TableRow></asp:TableRow>
                    <asp:TableRow>
                    	<asp:TableCell>
                        	<label for="Name">Name</label>
                            <asp:TextBox runat="server" type="text" name="Name" ID="Name"></asp:TextBox>*
                            
                            
                            <label for="Occupation">Occupation</label>
                            <asp:TextBox runat="server" type="text" name="Occupation" ID="Occupation"></asp:TextBox>*
                            
                            
                            <label for="MonthlyFamilyIncome">Monthly Family Income</label>
                            <asp:TextBox runat="server" type="text" name="MonthlyFamilyIncome" ID="MonthlyFamilyIncome"></asp:TextBox>*
                        </asp:TableCell>
                    </asp:TableRow>
                    
                </asp:Table>
                <!-- ****************End of PARENTS AND GUARDIAN DETAILS table ******* -->
                
                
                
                
                
                
                
                
                <!-- *************** Start of COURSE DETAILS **************** -->
                <div class="SubTitleStyle">
            		COURSE DETAILS
            	</div>
            	<asp:Table runat="server" id="CourseDetails">
                    
                	<asp:TableRow></asp:TableRow>
                    <asp:TableRow>
                    	<asp:TableCell>
                        	<label for="Medium">Medium</label>
                            <asp:DropDownList runat="server" name="Medium">
                            	<asp:ListItem selected="true">Select</asp:ListItem>
                                <asp:ListItem value="Somevalue1">English</asp:ListItem>
                               
                            </asp:DropDownList>
                            
                            
                            <label for="Course">Course</label>
                            <asp:DropDownList runat="server" name="Course">
                            	<asp:ListItem selected="true">Select</asp:ListItem>
                                <asp:ListItem value="Diploma in Computer">Diploma in Computer</asp:ListItem>
                                <asp:ListItem value="Diploma in Mechanical">Diploma in Mechanical</asp:ListItem>
                                <asp:ListItem value="Diploma in Civil">Diploma in Civil</asp:ListItem>
                                <asp:ListItem value="Diploma in Electronics">Diploma in Electronics</asp:ListItem>
                                <asp:ListItem value="Diploma in Electrical">Diploma in Electrical</asp:ListItem>
                            </asp:DropDownList>


                            <label for="PreferredBatch"></label>
                            <asp:DropDownList runat="server" name="PreferredBatch">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                               <asp:ListItem value="Select">Select</asp:ListItem>
                            <asp:ListItem value="9 to 12">9 to 12</asp:ListItem>
                            <asp:ListItem value="4 to 6">4 to 6</asp:ListItem>
                            <asp:ListItem value="5 to 7">5 to 7</asp:ListItem>
                            <asp:ListItem value="10 to 1">10 to 1</asp:ListItem>
                            <asp:ListItem value="12 to 2">12 to 2</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                    	<asp:TableCell>
                            <label for="Remarks">Remarks</label>
                            <textarea name="Remarks" maxlength="600" rows="3" cols="100"></textarea>*
                            
                            
                            <label for="FollowUpDate">Follow-up Date</label>
                            <input type="date">*
                            <!--<input type="date" name="FollowUpDate">*-->
                            
                            <label for="FollowUpMode">Follow-up Mode</label>
                            <asp:DropDownList runat="server" name="FollowUpMode" ID="FollowUpMode">
                            	<asp:ListItem selected="True">Select</asp:ListItem>
                                <asp:ListItem value="Telephone">Telephone</asp:ListItem>
                                <asp:ListItem value="Mail">Mail</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>   
                </asp:Table>
                <!-- **************** End of COURSE DETAILS table *********** -->
                
                
                
                
                
                
                
                <!-- ********** Start of Button ******************* -->
                <div id="Buttons">
                    <asp:Button runat="server"  ID="SaveEnquiry" Text="Save Enquiry" CssClass="BlueButton" OnClick="SaveEnquiry_Click"></asp:Button>
                    <asp:Button runat="server"  ID="ContinueWithRegistration" Text="Continue With Registration==>" CssClass="BlueButton"></asp:Button>
                    <asp:Button runat="server" Text="Reset" ID="Reset" CssClass="BlueButton"></asp:Button>
                </div>
                <!-- *********** End of Button ******************* -->
                
            </div> <!-- End of EnquiryRegistrationFormContent -->
        
        </div><!-- End of EnquiryRegistrationForm -->
    
    


    </form>
</body>
</html>
