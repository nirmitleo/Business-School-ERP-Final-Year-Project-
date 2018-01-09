<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StaffRegistrationSystem.aspx.cs" Inherits="StaffRegistrationSystem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 
		<title>Staff Registration System</title>
        <style type="text/css">
        
            *
            {
                margin:0px;
                padding:0px;
            }
            
            body
            {
                font-family:Calibri;
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
            
            
            
            
            /*--------Styling the Staff Work Profile System--------*/
            div#StaffWorkProfileSystem
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
            
            div#StaffWorkProfileSystem div#StaffWorkProfileSystemBanner
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
            
            div#StaffWorkProfileSystem table,tr,td 
            {
                border-top:white solid 2px;
                border-bottom:solid white 2px;
                //border-right:solid white 2px;
                border-collapse:collapse;
                height:60px;
            }
            div#StaffWorkProfileSystem table 
            {
                position:absolute;
                width:100%;
            }
            div#StaffWorkProfileSystem .BlueButton
            {
                background:#018788;
                width:75px;
                height:25px;
                color:white;
                border:solid white 2px;
                font-family:Calibri;
                font-weight:bold;
            }
            div#StaffWorkProfileSystem .BlueButton:hover
            {
                cursor:pointer;
            }
            
            
            
            
        </style>
</head>
<body>
    <form id="PayrollStaffTransferForm" runat="server">
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
    
    
        
        <!-- *************Staff Work Profile System****************** -->
        <div id="StaffWorkProfileSystem">
        	<div id="StaffWorkProfileSystemBanner">
                Staff Registration System
            </div>
        	<div id="StaffWorkProfileSystemContent">
            	<asp:Table runat="server" ID="StaffWorkProfileSystemContentTable">
                	<asp:TableRow></asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell style="color:blue;font-size:12px;font-family:Calibri;padding-left:5px">To Enter New Staff Registration Details click on the Add button.</asp:TableCell>
                        <asp:TableCell HorizontalAlign="center"><asp:button ID="Button1" runat="server" Text="Add" name="Add" class="BlueButton" value="Add"></asp:button></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell width="45%" HorizontalAlign="center">
                        	<label for="SearchType" style="color:darkblue;font-family:Calibri;font-weight:bold;">Search Type : </label>
                        	<asp:DropDownList runat="server" name="SearchType" ID="SearchType">
                                <asp:ListItem selected="True">Select</asp:ListItem>
                            	<asp:ListItem value="Employee Code">Employee Code</asp:ListItem>
                            	<asp:ListItem value="Name">Name</asp:ListItem>
                        	</asp:DropDownList>
                       	</asp:TableCell>
                        <asp:TableCell HorizontalAlign="left">
                            <label for="NameOrNo" style="color:darkblue;font-family:Calibri;font-weight:bold">Name or No : </label>
                            <asp:TextBox TextMode="SingleLine" runat="server" name="NameOrNo" ID="NameOrNo"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                    <asp:TableRow>
                    	<asp:TableCell style="color:blue;font-size:12px;font-family:Calibri;padding:5px">To Edit Staff Registration Details Select Respective Details and click on the Edit Button.</asp:TableCell>
                        <asp:TableCell HorizontalAlign="center"><asp:button ID="Button2" runat="server" Text="Edit" name="Edit" class="BlueButton" value="Edit"></asp:button></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                    	<asp:TableCell style="color:blue;font-size:12px;font-family:Calibri;padding:5px;">To Delete Staff Registration Details Select Respective Details and click on the Delete button.</asp:TableCell>
                        <asp:TableCell HorizontalAlign="center"><asp:button ID="Button3" runat="server" Text="Delete" name="Delete" class="BlueButton" value="Delete"></asp:button></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                    	<asp:TableCell style="color:blue;font-size:12px;font-family:Calibri;padding:5px;">To View Staff Registration Details Select Respective Details and click on the View button.</asp:TableCell>
                        <asp:TableCell HorizontalAlign="center"><asp:button ID="Button4" runat="server" Text="View" name="View" class="BlueButton" value="View"></asp:button></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        
        </div>

    </form>
</body>
</html>
