<%@ Page Title="User Signup" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="GroupProjectV4.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <label ID="labelU" runat="server">User Name:</label>
    <asp:TextBox ID="UserNameTxtBox" runat="server"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email:
    <asp:TextBox ID="EmailTxtBox" runat="server"></asp:TextBox>
    <br />
    
&nbsp;&nbsp;Password:
    <asp:TextBox ID="PasswordTxtBox" runat="server"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Role:<asp:DropDownList ID="RolesList" runat="server">
        <asp:ListItem Value="">Select A Role</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>User</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="createdMsg" runat="server" Text="Account Created" Visible="False"></asp:Label>
    <asp:Label ID="ErrorLabel" runat="server" ForeColor="#CC3300" Text="               Email invalid or Role not selected" Visible="False"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="SubmitBtn" runat="server" OnClick="SubmitBtn_Click" Text="Create User" Width="146px" />
&nbsp;<asp:Button ID="createdButton" runat="server" OnClick="createdButton_Click" Text="Return" Visible="False" />
&nbsp;<div id ="errorMsg"></div>
</asp:Content>
