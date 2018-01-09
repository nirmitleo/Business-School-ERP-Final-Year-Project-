<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calender.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script runat="server">
    
    void Calender_SelectionChanged(Object sender, EventArgs e)
        {

            String JavaScriptString = "<script type='text/javascript'>";
            JavaScriptString += "window.opener." + HttpContext.Current.Request.QueryString["formname"];
            JavaScriptString += ".value = '" + SampleCalendar.SelectedDate.ToString("d") + "';window.close();";
            JavaScriptString += "</script" + ">";
            SampleLiteral.Text = JavaScriptString;
        }
        
    
    </script>
</head>
<body>
    <form runat="server">
        <asp:Calendar ID="SampleCalendar" runat="server" OnSelectionChanged="Calender_SelectionChanged"></asp:Calendar>
        <asp:Literal ID="SampleLiteral" runat="server"></asp:Literal>
    </form>
</body>
</html>
