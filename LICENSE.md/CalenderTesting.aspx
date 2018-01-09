<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CalenderTesting.aspx.cs" Inherits="CalenderTesting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function CalenderOpenFunction()
        {
            window.open("/Calender.aspx?formname=form1.CalenderText", "CalenderWindow", "height=200px,width=200px", "CalenderWindow.focus(true)");
        }


    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox runat="server" ID="CalenderText"></asp:TextBox>
        <asp:ImageButton runat="server" ID="CalenderImageButton" ImageUrl="~/Calender.jpg"  OnClientClick="CalenderOpenFunction();"></asp:ImageButton>
    </div>
    </form>
</body>
</html>
