<html>
	<head>
		<title>Edit Enquiry Registration System</title>
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
            
            
            
            
            /*--------Styling the Registration Details--------*/
            
            div#RegistrationDetailsDiv
            {
                display:block;
                width:100%;
                position:absolute;
                top:200px;
                height:200px;
                //outline:solid red 1px;
            }
            
            table#RegistrationDetailsDivTable
            {
                width:100%;
                height:200px;
                outline:solid blue 1px;
                border-collapse:collapse;
                font-family:Calibri;
                font-size:11pt;
            }
            
            table#RegistrationDetailsDivTable tr td
            {
                background:#d0dcc0;
                border:solid white 1px;
                height:25px;
                line-height:25px;
            }
            
            
            table tr#TableHeadingRow td
            {
                background-color:#688890;
                color:white;
                height:20px;
                text-align:center;
                font-weight:bold;
                font-size:14px;
                font-family:Calibri;
            }
            
            
            .BlueButton
            {
                background:#018788;
                height:30px;
                width:220px;
                color:white;
                border:solid white 2px;
                font-family:'Segoe UI';
                font-weight:bold;
                margin-left:300px;
            }
            .BlueButton:hover
            {
                cursor:pointer;
            }
            
            div#Buttons
            {
                display:block;
                background-color:white;
                //outline:solid red 3px;
                position:absolute;
                top:310px;
            }
            
            span#RedFont
            {
                color:red;
                font-weight:bold;
            }
            
            
        </style>
    </head>
    <body>
    <form runat="server">
        
        
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
    
    
        
        <!-- ************* Start of Edit Enquiry Registration System -->
        
        <div id="RegistrationDetailsDiv">
        	<asp:Table runat="server" ID="RegistrationDetailsDivTable">
            	<asp:TableRow id="TableHeadingRow">
                    <asp:TableCell width="25%" style="text-align:left;padding-left:15px;">REGISTRATION DETAILS</asp:TableCell>
                    <asp:TableCell ColumnSpan="4" style="text-align:left;padding-left:15px;">
                        <asp:RadioButton Id="OLD" runat="server" name="OLD"></asp:RadioButton>
                        <label for="OLD">OLD</label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton runat="server" ID="NEW" name="OLD"></asp:RadioButton>
                        <label for="NEW">NEW</label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="100"></asp:TableCell> 
                </asp:TableRow>
                <asp:TableRow>
                	<asp:TableCell><label for="ManualRegistrationNo">Manual Registration No : </label></asp:TableCell>
                    <asp:TableCell ColumnSpan ="4"><asp:TextBox TextMode="SingleLine" runat="server" ID="ManualRegistrationNo"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><label for="RegistrationConfirmationDate">Registration Confirmation Date</label></asp:TableCell>
                    <asp:TableCell ColumnSpan="4">
                        <input type="date">*
                        &nbsp;&nbsp;&nbsp;
                 		<label for="BatchStartDate">Batch Start Date</label>       
                        <input type="date">*
                        &nbsp;&nbsp;&nbsp;
                        <label for="BatchTime">Batch Time</label>
                        <asp:DropDownList runat="server" ID="BatchTime" name="BatchTime">
                        	<asp:ListItem value="Select">Select</asp:ListItem>
                            <asp:ListItem value="9 to 12">9 to 12</asp:ListItem>
                            <asp:ListItem value="4 to 6">4 to 6</asp:ListItem>
                            <asp:ListItem value="5 to 7">5 to 7</asp:ListItem>
                            <asp:ListItem value="10 to 1">10 to 1</asp:ListItem>
                            <asp:ListItem value="12 to 2">12 to 2</asp:ListItem>
                        </asp:DropDownList>*
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                	<asp:TableCell>Course Fees</asp:TableCell>
                    <asp:TableCell  ColumnSpan="4">
                        (Installment <span id="RedFont">2000</span> Rs)
                        <br>
                        (LumpSum <span id="RedFont">1800</span> Rs)
                        &nbsp;&nbsp;&nbsp;
                        <label for="Type">Type:</label>
                        <asp:DropDownList runat="server" ID="Type" name="Type">
                        	<asp:ListItem value="Select">Select</asp:ListItem>
                            <asp:ListItem value="Lumpsum">Lumpsum</asp:ListItem>
                            <asp:ListItem value="Installment">Installment</asp:ListItem>
                            
                           
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButtonList ID="Regular" runat="server" name="Regular"></asp:RadioButtonList>
                        <label for="Regular"><span id="RedFont">Regular</span></label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButtonList ID="Other" runat="server" name="Other"></asp:RadioButtonList>
                        <label for="Other"><span id="RedFont">Other</span></label>
                        &nbsp;&nbsp;&nbsp;
                        <label for="Discount">Discount</label>
                        <asp:TextBox TextMode="SingleLine" runat="server" ID="Discount" name="Discount"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        (%)* (If no discount Please Enter '0')
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Id="TableHeading">
                    <asp:TableCell ColumnSpan="4" style="text-align:left">(FEE PAYMENT PLAN)</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                	<asp:TableCell ColumnSpan="100"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                	<asp:TableCell ColumnSpan="100">
                        <label for="AmountReceived">Amount Received</label>
                        <asp:TextBox TextMode="SingleLine" runat="server" ID="AmountReceived" name="AmountReceived">*</asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        <label for="NoOfMonthlyInstallment">No Of Monthly Installment</label>
                        <asp:TextBox TextMode="SingleLine" runat="server" ID="NoOfMonthlyInstallment" name="NoOfMonthlyInstallment">*</asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        <label for="InstallmentAmount">Installment Amount(<span id="RedFont">excluding Registration Fees</span>)*</label>
                        <asp:TextBox TextMode="SingleLine" runat="server" ID="InstallmentAmount" name="InstallmentAmount">*</asp:TextBox>
                    </asp:TableCell>
              	</asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="100">
                    	<label for="DownPayment">(Registration Fees <span id="RedFont"><u>200</u></span> Rs) + (DownPayment <asp:TextBox ID="TextBox1" TextMode="SingleLine" runat="server"></asp:TextBox>)</label>
                        <br>
                        <label for="ProvisionalFees">Provisional Fees Received Extra:<span id="RedFont">0</span></label>
                        <br>
                        <asp:Button runat="server" class="BlueButton" ID="CalculateFees" value="Calculate Fees" Text="Calculate Fees" style="margin-left:500px;"></asp:Button>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        
        
        <!-- ************* End of Edit Enquiry Registration System -->
                
                
                
        <!-- ********** Start of Button ******************* -->
        <div id="Buttons">
            <asp:Button runat="server" class="BlueButton" ID="SubmitFollowUp" value="Submit Follow-Up" Text="Submit Follow-Up" style="position:absolute;top:225px;margin-left:500px;"></asp:Button>
        </div>
        <!-- *********** End of Button ******************* -->
          </form>
    </body>
</html>