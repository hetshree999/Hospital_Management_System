<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DPatientHistory.aspx.cs" Inherits="HospitalManagementSystem.DPatientHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <center>
                <br />
                <br />
                <b><asp:Label ID="lblDPatientHistory" runat="server" Text="Patient History" font-size="X-Large"></asp:Label></b>
                <br />
                <br />
                <asp:GridView ID="GVDPatientHistory" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcePatientHistoryD" AutoGenerateEditButton="True" OnSelectedIndexChanged="GVDPatientHistory_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="AppoimentDate" HeaderText="AppoimentDate" SortExpression="AppoimentDate" />
                        <asp:BoundField DataField="Action" HeaderText="Action" SortExpression="Action" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourcePatientHistoryD" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [PName], [Department], [Gender], [Contact], [City], [AppoimentDate], [Action] FROM [Appoiment] WHERE ([Docotor] = @Docotor)"
                    UpdateCommand="UPDATE [Appoiment] Set [Action]=@Action Where [PName]=@PName">
                    <SelectParameters>
                        <asp:SessionParameter Name="Docotor" SessionField="DName" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            <br />
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" /></center>
            <br />
        </div>
    </form>
</body>
</html>
