<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PUpdateProfile.aspx.cs" Inherits="HospitalManagementSystem.PUpdateProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 468px;
        }
        .auto-style5 {
            width: 141px;
        }
        .auto-style3 {
            width: 249px;
        }
        .auto-style6 {
            width: 439px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <center>
                <b>
                <br />
                <br />
                <br />
                <asp:Label ID="lblMain" runat="server" Text="Update Patient Profile" Font-Size="X-Large"></asp:Label>
                </b>
                <br />
                <br />
                <table class="auto-style1" >
                    <tr>
                        <td  class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style5">
                <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="tbName" ErrorMessage="Name is requried." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style5">
                <asp:Label ID="lblGender" runat="server" Text="Gender: "></asp:Label>
                        </td>
                        <td class="auto-style3"><asp:DropDownList ID="ddGender" runat="server">
                    <asp:ListItem Selected="True" Value="0">Select Gender</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:DropDownList>
                        </td>
                        <td class="auto-style6">
                            <asp:CompareValidator ID="CompareValidatorGender" runat="server" ControlToValidate="ddGender" ErrorMessage="Please Select Gender" ForeColor="Red" Operator="NotEqual" ValueToCompare="0"></asp:CompareValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style5">
                <asp:Label ID="lblAge" runat="server" Text="Age: "></asp:Label>
                        </td>
                        <td class="auto-style3"><asp:TextBox ID="tbAge" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" runat="server" ControlToValidate="tbAge" ErrorMessage="Age is Requried." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style5">
                <asp:Label ID="lblContact" runat="server" Text="Contact"></asp:Label>
                        </td>
                        <td class="auto-style3"><asp:TextBox ID="tbContact" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorContact" runat="server" ControlToValidate="tbContact" EnableViewState="False" ErrorMessage="Contact is requried." ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorContact" runat="server" ControlToValidate="tbContact" ErrorMessage="Contact number must be of 10 digits." ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style5">
                <asp:Label ID="lblAddress" runat="server" Text="Address: "></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:TextBox ID="tbAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="tbAddress" ErrorMessage="Address is requried." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style5">
                <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:TextBox ID="tbEmail" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email is requried." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    </table>
                <br />
                <asp:Button ID="btnRegistration" runat="server" Text="Update" OnClick="btnRegistration_Click" />
                <br />
                <br />
                <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
            </center>
        <div>
        </div>
    </form>
</body>
</html>
