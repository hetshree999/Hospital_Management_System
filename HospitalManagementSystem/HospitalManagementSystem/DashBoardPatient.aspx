<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoardPatient.aspx.cs" Inherits="HospitalManagementSystem.DashBoardPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <center><b><asp:Label ID="lblDashBoard" runat="server" Text="Patient DashBoard" font-size="X-Large"></asp:Label>
                <br />
                <br />
                Hello,&nbsp;&nbsp;
                <asp:Label ID="lblName" runat="server" Text='' ></asp:Label>
                </b></center>
            <br />
            <br />
            <asp:HyperLink ID="hlUpdateP" runat="server" ForeColor="Blue" NavigateUrl="~\PUpdateProfile.aspx">Update Profile</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="hlBookAppoiment" runat="server" BorderColor="Blue" NavigateUrl="~\PBookAppoiment.aspx" ForeColor="Blue">Book Appoiment</asp:HyperLink>
&nbsp;&nbsp;
            <br />
            <br />
            <asp:HyperLink ID="hlAppoimentHistory" runat="server" BorderColor="Blue" NavigateUrl="~/PAppoimentHistory.aspx" ForeColor="Blue">Appoiment History</asp:HyperLink>
            <br />
            <br />
            <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
            <br />
        </div>
    </form>
</body>
</html>
