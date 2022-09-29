<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoardDoctor.aspx.cs" Inherits="HospitalManagementSystem.DashBoardDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <br />
            <center><b><asp:Label ID="lblDDashBoard" runat="server" Text="Doctor DashBoard" font-size="X-Large"></asp:Label>
                <br />
                <br />
                Hello,&nbsp;&nbsp;
                <asp:Label ID="lblDName" runat="server" ></asp:Label>
                </b></center>
            <br />
            <br />
            <asp:HyperLink ID="hlUpdateD" runat="server" ForeColor="Blue" NavigateUrl="~\DUpdateProfile.aspx">Update Profile</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="hlDPatientHistory" runat="server" BorderColor="Blue" NavigateUrl="~/DPatientHistory.aspx" ForeColor="Blue">Patient History</asp:HyperLink>
&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
            <br />
        </div>
    </form>
</body>
</html>
