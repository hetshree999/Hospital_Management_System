<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HospitalManagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <b><asp:Label ID="lblQuestion" runat="server" Text="Are you Doctor or Patient?" Font-Size="Larger"></asp:Label></b>
                <b>
                <br />
                <br />
                <asp:RadioButtonList ID="rblLogin" runat="server" OnSelectedIndexChanged="rblLogin_SelectedIndexChanged">
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem Selected="True">Patient</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Button ID="btnQuestion" runat="server" OnClick="btnQuestion_Click" Text="Ok" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Panel ID="PanelLogin" runat="server">
                    <b>&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblMain" runat="server" Text="Login" Font-Size="XX-Large"></asp:Label>
                    </b>
                    <br />
                    <br />
                    <asp:Label ID="lblUserName" runat="server" Text="UserName:"></asp:Label>
                    &nbsp;<asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    <br />
                    <br />
                    &nbsp;<asp:HyperLink ID="hlRegister" runat="server" ForeColor="Blue" NavigateUrl="~/Registration.aspx">Create an account ?</asp:HyperLink>
                    <br />
                </asp:Panel>
                <br />
                </b>
              </center>
        </div>
    </form>
</body>
</html>
