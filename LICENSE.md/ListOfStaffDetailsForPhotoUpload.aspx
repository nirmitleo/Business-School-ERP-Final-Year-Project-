﻿﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListOfStaffDetailsForPhotoUpload.aspx.cs" Inherits="ListOfStaffDetailsForPhotoUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>List Of Staff Details For Photo Upload</title>
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
                font-family:Segoe UI;
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
            
            
            
            
            /*--------Styling the Process For Transfer--------*/
            div#ProcessForTransfer
            {
                display:block;
                position:absolute;
                width:100%;
                height:400px;
                top:200px;
                border:solid red 1px;
                background-color:#d0dcc0;
                z-index:0;
                
            }
            
            div#ProcessForTransfer div#ProcessForTransferBanner
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
            
            div#ProcessForTransfer table,tr,td 
            {
                border:white solid 1px;
                border-collapse:collapse;
                height:60px;
            }
            div#ProcessForTransfer table 
            {
                position:absolute;
                width:100%;
                
            }
            div#ProcessForTransfer .BlueButton
            {
                background:#018788;
                width:75px;
                height:25px;
                color:white;
                border:solid white 2px;
                font-family:Segoe UI;
                font-weight:bold;
            }
            div#ProcessForTransfer .BlueButton:hover
            {
                cursor:pointer;
            }
            
            
            div#ProcessForTransferContent table tr#TableHeadingRow td
            {
                background-color:#688890;
                color:white;
                height:20px;
                text-align:center;
                font-weight:bold;
                font-size:11px;
            }
            
            
            
        </style>

</head>
<body>
    <form id="form1" runat="server">
    <!-- *************Kohinoor Banner****************** -->
    	<div id="KohinoorBanner">
        	<asp:Image runat="server" ID="KohinoorLogoImage" src="D:\Images\Kohinoor.jpg" alt="KohinoorLogo"></asp:Image>
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
    
    
        
        <!-- *************Process For Transfer****************** -->
        <div id="ProcessForTransfer">
        	<div id="ProcessForTransferBanner">
                List Of Staff Details For Photo Upload
            </div>
        	<div id="ProcessForTransferContent">
            	<asp:Table ID="Table1" runat="server">
                	<asp:TableRow id="TableHeadingRow">
                    	<asp:TableCell width="10%">Emp code</asp:TableCell>
                        <asp:TableCell width="20%">Staff Name(<span style="color:yellow">Click on Name</span>)</asp:TableCell>
                         <asp:TableCell>Blood Grp</asp:TableCell>
                        <asp:TableCell>Religion</asp:TableCell>
                        <asp:TableCell>DOB</asp:TableCell>
                        <asp:TableCell width="15%">Contact No</asp:TableCell>
                        <asp:TableCell>Qualification</asp:TableCell>
                        <asp:TableCell>Designation</asp:TableCell>
                        <asp:TableCell>Agreement Type</asp:TableCell>
                        <asp:TableCell>Date of Join</asp:TableCell>
                        <asp:TableCell>Pf No</asp:TableCell>
                        <asp:TableCell>Photo</asp:TableCell>
                    </asp:TableRow>
                    
                    
                    
                    <asp:TableRow>
                        <asp:TableCell>Values from the Database</asp:TableCell>	
                        <asp:TableCell>Values from the Database</asp:TableCell>
                        <asp:TableCell>Values from the Database</asp:TableCell>
                        <asp:TableCell>Values from the Database</asp:TableCell>
                        <asp:TableCell>Values from the Database</asp:TableCell>
                        <asp:TableCell>Values from the Database</asp:TableCell>	
                        <asp:TableCell>Values from the Database</asp:TableCell>
                        <asp:TableCell>Values from the Database</asp:TableCell>
                        <asp:TableCell>Values from the Database</asp:TableCell>
                        <asp:TableCell>Values from the Database</asp:TableCell>
                         <asp:TableCell>Values from the Database</asp:TableCell>
                          <asp:TableCell>Values from the Database</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        
        </div>

    </form>
</body>
</html>
