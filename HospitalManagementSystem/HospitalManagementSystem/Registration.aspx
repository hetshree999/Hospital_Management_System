<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="HospitalManagementSystem.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><b>
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="lblMain" runat="server" Text="Registration" Font-Size="XX-Large"></asp:Label></b>
                <br />
                <br />
                <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                &nbsp;
                <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblGender" runat="server" Text="Gender: "></asp:Label>
&nbsp;<asp:DropDownList ID="ddGender" runat="server">
                    <asp:ListItem Selected="True" Value="0">Select Gender</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="lblAge" runat="server" Text="Age: "></asp:Label>
&nbsp;<asp:TextBox ID="tbAge" runat="server" TextMode="Number"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblContact" runat="server" Text="Contact: "></asp:Label>
&nbsp;<asp:TextBox ID="tbContact" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblAddress" runat="server" Text="Address: "></asp:Label>
&nbsp;
                <asp:TextBox ID="tbAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
&nbsp;
                <asp:TextBox ID="tbEmail" runat="server" TextMode="Email"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
&nbsp;<asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblConPassword" runat="server" Text="Confirm Password: "></asp:Label>
&nbsp;
                <asp:TextBox ID="tbConPassword" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnRegistration" runat="server" Text="Register" OnClick="btnRegistration_Click" />
                <br />
                <br />
                <asp:Label ID="lblDescription" runat="server" Text="Have an account ?"></asp:Label>
&nbsp;
                <asp:HyperLink ID="hlLogin" runat="server" ForeColor="Blue" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                </center>
            &nbsp;<br />
            <br />
        </div>
    </form>
</body>
</html>
