<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PAppoimentHistory.aspx.cs" Inherits="HospitalManagementSystem.PAppoimentHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <br />
                <b><asp:Label ID="lblAppoimentHistory" runat="server" Text="Appoiment History" font-size="X-Large"></asp:Label>
                <br />
                <br />
                </b>
                <br />
                <asp:GridView ID="GVAppoiementHistory" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAppoimentHistory">
                <Columns>
                    <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="Docotor" HeaderText="Docotor" SortExpression="Docotor" />
                    <asp:BoundField DataField="AppoimentDate" HeaderText="AppoimentDate" SortExpression="AppoimentDate" />
                    <asp:BoundField DataField="AppoimnetTime" HeaderText="AppoimnetTime" SortExpression="AppoimnetTime" />
                    <asp:BoundField DataField="Action" HeaderText="Action" SortExpression="Action" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceAppoimentHistory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PName], [Department], [Docotor], [AppoimentDate], [AppoimnetTime], [Action] FROM [Appoiment] WHERE ([Email] = @Email)">
                <SelectParameters>
                    <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                <br />
            <br />
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" /></center>
            <br />
        </div>
    </form>
</body>
</html>
