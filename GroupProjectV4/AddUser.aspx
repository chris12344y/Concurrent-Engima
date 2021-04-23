<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="GroupProjectV4.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    User Name:
    <asp:TextBox ID="UserNameTxtBox" runat="server"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:
    <asp:TextBox ID="EmailTxtBox" runat="server"></asp:TextBox>
    <br />
&nbsp; Password:
    <asp:TextBox ID="PasswordTxtBox" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="SubmitBtn" runat="server" OnClick="SubmitBtn_Click" Text="Create User" Width="146px" />
&nbsp;
</asp:Content>
