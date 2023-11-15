<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="Volunteers_Interface.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Image ID="Image1" runat="server" Width="111px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone Number</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Hours Volunteered</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Volunteer Location</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Interests</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="123px">
                        <asp:ListItem>Adoption Check Up Team</asp:ListItem>
                        <asp:ListItem>Adoption Specialist</asp:ListItem>
                        <asp:ListItem>Application Processor</asp:ListItem>
                        <asp:ListItem>Community Outreach</asp:ListItem>
                        <asp:ListItem>Dog Walking/Socialization</asp:ListItem>
                        <asp:ListItem>Event Help</asp:ListItem>
                        <asp:ListItem>Foster Team</asp:ListItem>
                        <asp:ListItem>Grant Writing</asp:ListItem>
                        <asp:ListItem>Grooming</asp:ListItem>
                        <asp:ListItem>Petfinder</asp:ListItem>
                        <asp:ListItem>Social Media</asp:ListItem>
                        <asp:ListItem>Thank You Team</asp:ListItem>
                        <asp:ListItem>Vet Records</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
