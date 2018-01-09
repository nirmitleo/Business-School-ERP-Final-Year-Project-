<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConfirmationReport.aspx.cs" Inherits="ConfirmationReport" %>

<html>
<head runat="server">
    
    	<title>Confirmation Report</title>
        <style type="text/css">
        
            *{
                margin:0px;
                padding:0px;
            }
            
            body
            {
                background:#f0f8f8;
            }
        
        
        
        </style>
    </head>
    <body>
    <form id="form1" runat="server">
        
        <div id="KohinoorReportLogo">
            <asp:Image runat="server" src="D:\Images\Kohinoor.jpg" alt="KohinoorLogo" ID="KohinoorLogo"></asp:Image>
        </div>
        <div>
        	<pre>(Branch Address: Chandrapur Technical Group, Ground Floor, Sher Manjil building, Opp. Shaskiya Rugnalaya, Main Road Chota Bajar, Chandrapur-442402)</pre>
        </div>
        <br>
        <div>
        	<pre style="text-align:right">Dated : 10/03/2014</pre>
        </div>
        <br>
        <div>
        	<pre style="text-align:left">To:</pre>
        </div>    
        <br>
        <div>
            
        	<asp:Table runat="server" ID="Details" HorizontalAlign="right">
        		<asp:TableRow>
                	<asp:TableCell>Registration No:</asp:TableCell>
                	<asp:TableCell>Value from database</asp:TableCell>
            	</asp:TableRow>
                <asp:TableRow>
                	<asp:TableCell>Course Details:</asp:TableCell>
                	<asp:TableCell>Value from database</asp:TableCell>
            	</asp:TableRow>
                <asp:TableRow>
                	<asp:TableCell>Fee Plan:</asp:TableCell>
                	<asp:TableCell>Value from database</asp:TableCell>
            	</asp:TableRow>
                <asp:TableRow>
                	<asp:TableCell>Net Course Fee:</asp:TableCell>
                	<asp:TableCell>Value from database</asp:TableCell>
            	</asp:TableRow>
                <asp:TableRow>
                	<asp:TableCell>Amount Received:</asp:TableCell>
                	<asp:TableCell>Value from database</asp:TableCell>
            	</asp:TableRow>
        	</asp:Table>

        </div>
        
        <div id="Lett0erContent">
        	<pre>







Dear Reena kini,<br>
We are glad that you have chosen KTI for your vocational studies and are pleased to welcome you into the institute. We hope that you will undertake your studies
and training with complete sincerity and make full use of your time at the institute to throughly learn the knowledge and skills that will be taught to you.
			
The receipt for the Registration Fee and Course Fee paid by you is attached herewith. As a special case, although you have opted Lump Sum Fee Plan, we
have decided to give you time as per the following last date to pay the balance of your Lump Sum Course Fee.

Last Date for the Balance Fee Payment: <span>Value from database</span>
Balance Fee Account:RS <span>Value from database</span>

Please note that in case your balance fee is not received in full before the above last date, your admission will be converted to "Installment Fee Plan", as per which
the course fee of RS <span>Value from database</span>
The fee for the course you have registered for is Rs <span>Value from database</span>
This will have to be paid as per the following schedule:
			</pre>
        </div>
        <asp:Table runat="server" ID="FeeStructure">
        		<asp:TableRow>
                	<asp:TableCell>Fee Particular</asp:TableCell>
                	<asp:TableCell>&nbsp;&nbsp;Amount (RS) To be Paid</asp:TableCell>
            		<asp:TableCell>&nbsp;&nbsp;Last Date For Payment</asp:TableCell>
            	</asp:TableRow>
            	
                <asp:TableRow>

                	<asp:TableCell><span>Value from database</span></asp:TableCell>
                	<asp:TableCell><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Value from database</span></asp:TableCell>
                    <asp:TableCell><span>&nbsp;&nbsp;Value from database</span></asp:TableCell>
            	</asp:TableRow>            
            <asp:TableRow>
                	<asp:TableCell></asp:TableCell>
                	<asp:TableCell>&nbsp;&nbsp;&nbsp;Total Fees: <span>Value from database</span></asp:TableCell>
						                
            	</asp:TableRow>
        </asp:Table>
    	<div id="Conclusion">
            <pre>
Please note that in case any of your instakments are delayed beyond the above mentioned dates, you may be debarred from attending classes until the outstanding
fees are paid. Also, you will be liable to pay a Late fee Penalty of Rs 5/- per day if payment is made after the 30th of that particular month.

Please sign the attached copy of this letter in token of your acceptance of the same.

Yours faithfully,														Student signature:

For Kohinoor Technical Institute												Student name:

Branch Manager															<span>Value from database</span>		
</pre>
            </div>
        <div>
            <asp:Table runat="server" ID="Table1">
	<asp:TableRow>
        <asp:TableCell><asp:Button runat="server" class="BlueButton" ID="Printconfirmation" value="Printconfirmation" Text="Print Confirmation"></asp:Button></asp:TableCell>
            
         <asp:TableCell><asp:Button runat="server" class="BlueButton" ID="Back" value="Back" Text="Back" style="position:absolute;top:750px;margin-left:1000px;" >
                                                            
             </asp:Button></asp:TableCell>
             </asp:TableRow>   
           </asp:Table>
         
           </div>
        </form>
    </body>
</html>


    
   