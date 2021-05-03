<%@ Page Title="User Signup" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="GroupProjectV4.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link rel="stylesheet" type="text/css" href="/CSS-Sheets/Style-master.css" media="screen" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="AddUserTable">
    <table>
        <tr>
            <td>
                <asp:Label ID="UsernameLbl" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="UserNameTxtBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="EmailLbl" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="EmailTxtBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="PasswordLbl" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="PasswordTxtBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="RoleLbl" runat="server" Text="Role:" Visible="False"></asp:Label>
            </td>
            <td><asp:DropDownList ID="RolesList" runat="server" OnSelectedIndexChanged="RolesList_SelectedIndexChanged" Visible="False">
        <asp:ListItem Value="">Select A Role</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem Selected="True">User</asp:ListItem>
    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="createdMsg" runat="server" Text="Account Created" Visible="False"></asp:Label>
            </td>
            <td>
    <asp:Label ID="ErrorLabel" runat="server" ForeColor="#CC3300" Text="               Email invalid or Role not selected" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
    <asp:Button ID="SubmitBtn" runat="server" OnClick="SubmitBtn_Click" Text="Create User" Width="146px" />
            </td>
            <td><asp:Button ID="createdButton" runat="server" OnClick="createdButton_Click" Text="Return" Visible="False" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><div id ="errorMsg"></div>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
