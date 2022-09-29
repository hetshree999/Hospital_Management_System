<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADisplayPatient.aspx.cs" Inherits="HospitalManagementSystem.ADisplayPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center><b>
            <br />
            <br />
            <asp:Label ID="lblADisplayPatient" runat="server" Text="Display Patients" font-size="X-Large"></asp:Label>
            <br />
            </b>
            <br />
            <asp:GridView ID="GVADisplayPatient" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceADisplayPatients">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceADisplayPatients" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Gender], [Age], [Contact], [Address], [Email] FROM [PatientInfo]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
                </center>
    </form>
</body>
</html>
