<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StaffInformationJobDetailsDelete.aspx.cs" Inherits="StaffInformationJobDetailsDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 
		<title>Staff Information</title>
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
                z-index:1;
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
            
            
            
            
            /*--------Styling the Staff Information--------*/

            
            div#StaffInformation
            {
                position:absolute;
                top:190px;
                width:100%;
                outline:solid 1px red;
            }
            
            div#StaffInformationBanner, div#LeaveDetailsBanner
            {
                display:block;
                height:30px;
                line-height:30px;
                color:white;
                background-color:#3098c8;
                text-align:center;
                font-family:Calibri;
                font-weight:bold;
                //margin-top:15px;
            }
            
            div#StaffInformationContentDiv
            {
                display:block;
                position:absolute;
                width:100%;
                height:140px;
                top:50px;
                border:solid red 1px;
                background-color:#d0dcc0;
                z-index:0;
            }
            table#StaffInformationContentTable
            {
                border-collapse:collapse;
                height:150px;
                width:100%;
                font-family:Segoe UI;
                font-size:11px;
                font-weight:bold;
                
            }
            table#StaffInformationContentTable tr td
            {
                height:35px;
                color:#1b469d;
                border:solid white 1px;
                padding-left:5px;
            }
            
            
            /*--------End Of Styling the Staff Information--------*/
            
            
            
            /*-------- Start of Styling the Leave Details --------*/
            
            
            div#LeaveDetails
            {
                position:absolute;
                top:500px;
                width:100%;
                outline:solid 1px red;
            }
                        
            div#LeaveDetailsContentDiv
            {
                display:block;
                position:absolute;
                width:100%;
                height:100px;
                top:50px;
                border:solid red 1px;
                background-color:#d0dcc0;
                z-index:0;
            }
            table#LeaveDetailsContentTable
            {
                border-collapse:collapse;
                height:25px;
                width:100%;
                font-family:Segoe UI;
                font-size:11px;
                font-weight:bold;
                
            }
            table#LeaveDetailsContentTable tr#TableHeadingRow td
            {
                background-color:#688890;
                color:white;
                height:25px;
                text-align:center;
                font-weight:bold;
                font-size:11px;
            }
            table#LeaveDetailsContentTable tr td
            {
                height:25px;
                color:#1b469d;
                border:solid white 1px;
                padding-left:5px;
            }
            
            /*-------- End of Styling the Leave Details --------*/
            
            
            
            
            
            
            
            
            .BlueButton
            {
                background:#018788;
                height:30px;
                width:220px;
                color:white;
                border:solid white 2px;
                font-family:'Segoe UI';
                font-weight:bold;
                margin-left:500px;
            }
            .BlueButton:hover
            {
                cursor:pointer;
            }

            div#Buttons
            {
                display:block;
                background-color:white;
                outline:solid red 3px;
            }
            
            span#RedFont
            {
                color:red;
                font-weight:bold;
                font-size:8pt;
            }
            
            
        </style>
    </head>
    <body>

    <form id="Form1" runat="server">
        
        <!-- *************Kohinoor Banner****************** -->
    	<div id="KohinoorBanner">
        	<asp:Image runat="server" src="D:\Images\Kohinoor.jpg" alt="KohinoorLogo" ID="KohinoorLogo"></asp:Image>
            <div id="GoogleSearchSection"></div>
            <div id="Date"></div>
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
    
    
        
        <!-- *************Staff Information****************** -->
        <div id="StaffInformation">
        	<div id="StaffInformationBanner">
                Staff Information
            </div>
            <div id="StaffInformationContentDiv">
        		<asp:Table runat="server"  ID="StaffInformationContentTable">
                    <asp:TableRow>
                        <asp:TableCell style="border:none;height:15px;"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                    	<asp:TableCell>STAFF CODE:</asp:TableCell>
                        <asp:TableCell><span id="RedFont"></span>9-digit number</asp:TableCell>
                        <asp:TableCell>STAFF NAME:</asp:TableCell>
                        <asp:TableCell ColumnSpan="3"><span id="RedFont">RADHIKA NITIN LOHAGAONKAR</span></asp:TableCell>
                        <asp:TableCell>DATE OF BIRTH:</asp:TableCell>
                        <asp:TableCell><span id="RedFont">12/12/31</span></asp:TableCell>
                        <asp:TableCell>CONTACT NO:</asp:TableCell>
                        <asp:TableCell><span id="RedFont">02412325307/0</span></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="100" style="height:15px;"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>DATE OF JOIN:</asp:TableCell>
                        <asp:TableCell><span id="RedFont">12/12/31</span></asp:TableCell>
                        <asp:TableCell>DESIGNATION:</asp:TableCell>
                        <asp:TableCell ColumnSpan="3"><span id="RedFont">Counsellors</span></asp:TableCell>
                        <asp:TableCell>PF NO:</asp:TableCell>
                        <asp:TableCell><span id="RedFont">/ESIC.NO</span></asp:TableCell>
                        <asp:TableCell>BLOOD GROUP:</asp:TableCell>
                        <asp:TableCell><span id="RedFont">O+</span></asp:TableCell>
                    </asp:TableRow>
                    
                 </asp:Table>
            </div>
         </div>
        <!-- *************End of Staff Information****************** -->
        
        <!-- ************* Start of Leave Details ***************** -->
        <div id="LeaveDetails">
        	<div id="LeaveDetailsBanner">
                Job Details
            </div>
            <div id="LeaveDetailsContentDiv">
        		<asp:Table runat="server" ID="LeaveDetailsContentTable">
                    <asp:TableRow id="TableHeadingRow">
                        <asp:TableCell ColumnSpan="1">JOB NO(Click On Job No To Edit)</asp:TableCell>
                        <asp:TableCell ColumnSpan="8">Course Name</asp:TableCell>
                        <asp:TableCell ColumnSpan="3">Batch Timing</asp:TableCell>
                        <asp:TableCell ColumnSpan="2">Year</asp:TableCell>
                        <asp:TableCell ColumnSpan="2">Month</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="1"><asp:CheckBox ID="CheckBox" runat="server"></asp:CheckBox>Value From Database</asp:TableCell>
                        <asp:TableCell ColumnSpan="8">Value From Database</asp:TableCell>
                         <asp:TableCell ColumnSpan="3">Value From Database</asp:TableCell>
                        <asp:TableCell ColumnSpan="2">Value From Database</asp:TableCell>
                        <asp:TableCell ColumnSpan="2">Value From Database</asp:TableCell>
                    </asp:TableRow>
                 </asp:Table>
            </div>
         </div>
        
        <!-- ************* Start of Leave Details ****************** -->
        
       
         <!-- ********** Start of Button ******************* -->
                <div id="Buttons" style="position:absolute;top:1000px;width:100%;outline:none;">
                    <asp:Button value="Delete Job" runat="server" Text="Delete Job" ID="DeleteJob" name="DeleteJob"  class="BlueButton" ></asp:Button>
                </div>
        <!-- *********** End of Button ******************* --> 
        
        
     
        </form>
    
     </body>
</html>