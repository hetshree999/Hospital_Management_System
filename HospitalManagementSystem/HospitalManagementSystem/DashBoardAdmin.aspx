<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoardAdmin.aspx.cs" Inherits="HospitalManagementSystem.DashBoardAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <br />
            <center><b><asp:Label ID="lblADashBoard" runat="server" Text="Admin DashBoard" font-size="X-Large"></asp:Label>
                <br />
                <br />
                Hello,&nbsp;&nbsp;
                <asp:Label ID="lblName" runat="server" Text='' ></asp:Label>
                </b></center>
            <br />
            <br />
            <asp:HyperLink ID="hlAddDoctor" runat="server" ForeColor="Blue" NavigateUrl="~\AddDoctor.aspx">Add Doctors</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="hlADisplayDocotrs" runat="server" BorderColor="Blue" NavigateUrl="~/ADisplayDoctors.aspx" ForeColor="Blue">Display Doctors</asp:HyperLink>
&nbsp;&nbsp;
            <br />
            <br />
            <asp:HyperLink ID="hlAPatient" runat="server" BorderColor="Blue" NavigateUrl="~/ADisplayPatient.aspx" ForeColor="Blue">Display Patients</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="hlAAppoinmentHistory" runat="server" BorderColor="Blue" NavigateUrl="~/AAppoinmentHistory.aspx" ForeColor="Blue">Appointment History</asp:HyperLink>
            <br />
            <br />
            <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
            <br />
        </div>
    </form>
</body>
</html>
