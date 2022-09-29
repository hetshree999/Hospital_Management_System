<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DUpdateProfile.aspx.cs" Inherits="HospitalManagementSystem.DUpdateProfile" %>

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
    <form id="form2" runat="server">
        <div>
            <center><b>
                <br />
                <br />
                <br />
                <asp:Label ID="lblDMain" runat="server" Text="Update Doctor Profile" Font-Size="XX-Large"></asp:Label>
                <br />
                <br />
                </b>
                <table class="auto-style1" >
                    <tr>
                        <td  class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style5">
                <asp:Label ID="lblDName" runat="server" Text="Doctor Name: "></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:TextBox ID="tbDName" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDName" runat="server" ControlToValidate="tbDName" ErrorMessage="Doctor name is requried." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style5">
                <asp:Label ID="lblDSpecial" runat="server" Text="Doctor Specialization: "></asp:Label>
                        </td>
                        <td class="auto-style3">
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
                        </td>
                        <td class="auto-style6">
                            <asp:CompareValidator ID="CompareValidatorDSpecialization" runat="server" ControlToValidate="ddDSpecial" ErrorMessage="Please Select Specialization." ForeColor="Red" Operator="NotEqual" ValueToCompare="0"></asp:CompareValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style5">
                <asp:Label ID="lblDConFee" runat="server" Text="Conculatancy Fee"></asp:Label>
                        </td>
                        <td class="auto-style3"><asp:TextBox ID="tbDConFee" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDConFee" runat="server" ControlToValidate="tbDConFee" ErrorMessage="Conculatancy fee is Requried." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style5">
                <asp:Label ID="lblDContact" runat="server" Text="Contact: "></asp:Label>
                        </td>
                        <td class="auto-style3"><asp:TextBox ID="tbDContact" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDContact" runat="server" ControlToValidate="tbDContact" EnableViewState="False" ErrorMessage="Contact is requried." ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorDContact" runat="server" ControlToValidate="tbDContact" ErrorMessage="Contact number must be of 10 digits." ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style5">
                <asp:Label ID="lblDEmail" runat="server" Text="Email: "></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:TextBox ID="tbDEmail" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDEmail" runat="server" ControlToValidate="tbDEmail" ErrorMessage="Email is requried." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    </table>
                <br />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                <br />
                <br />
                <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
                <br />
                </center>
            &nbsp;<br />
            <br />
        </div>
    </form>
</body>
</html>
