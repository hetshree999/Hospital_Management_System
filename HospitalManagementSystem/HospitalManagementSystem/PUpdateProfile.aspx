<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PUpdateProfile.aspx.cs" Inherits="HospitalManagementSystem.PUpdateProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <center>
                <b>
                <br />
                <asp:Label ID="lblMain" runat="server" Text="Update Patient Profile" Font-Size="X-Large"></asp:Label>
                <br />
                </b>
                <br />
                <br />
                <asp:Label ID="lblName" runat="server" Text="Name: " EnableViewState></asp:Label>
                &nbsp;
                <asp:TextBox ID="tbName" runat="server" OnTextChanged="tbName_TextChanged"></asp:TextBox>
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
                <br />
                <asp:Button ID="btnRegistration" runat="server" Text="Update" OnClick="btnRegistration_Click" />
            </center>
        <div>
        </div>
    </form>
</body>
</html>
