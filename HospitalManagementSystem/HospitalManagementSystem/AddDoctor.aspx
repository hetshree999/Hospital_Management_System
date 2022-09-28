<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="HospitalManagementSystem.AddDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <center><b>
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="lblDMain" runat="server" Text="Add Doctor" Font-Size="XX-Large"></asp:Label></b>
                <br />
                <br />
                <asp:Label ID="lblDName" runat="server" Text="Doctor Name: "></asp:Label>
                &nbsp;
                <asp:TextBox ID="tbDName" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblDSpecial" runat="server" Text="Doctor Specialization: "></asp:Label>
                <asp:DropDownList ID="ddDSpecial" runat="server">
                    <asp:ListItem Selected="True" Value="0">Please Select</asp:ListItem>
                    <asp:ListItem>Pediatrics</asp:ListItem>
                    <asp:ListItem>Neurology</asp:ListItem>
                    <asp:ListItem>Internal Medicine</asp:ListItem>
                    <asp:ListItem>Orthopedic</asp:ListItem>
                    <asp:ListItem>Family Medicine</asp:ListItem>
                    <asp:ListItem>Cardiology</asp:ListItem>
                    <asp:ListItem>Radiology</asp:ListItem>
                    <asp:ListItem>Phychiatry</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="lblDConFee" runat="server" Text="Conculatancy Fee"></asp:Label>
&nbsp;<asp:TextBox ID="tbDConFee" runat="server" TextMode="Number"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblDContact" runat="server" Text="Contact: "></asp:Label>
&nbsp;<asp:TextBox ID="tbDContact" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblDEmail" runat="server" Text="Email: "></asp:Label>
&nbsp;
                <asp:TextBox ID="tbDEmail" runat="server" TextMode="Email"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblDPassword" runat="server" Text="Password: "></asp:Label>
&nbsp;<asp:TextBox ID="tbDPassword" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblDConPassword" runat="server" Text="Confirm Password: "></asp:Label>
&nbsp;
                <asp:TextBox ID="tbDConPassword" runat="server" TextMode="Password"></asp:TextBox>
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
