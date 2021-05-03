<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="GroupProjectV4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" style="background-color:rgba(51, 51, 51, 0.6)" BackColor="#403940" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="White" Height="238px" OnAuthenticate="Login1_Authenticate" Width="567px" UserNameLabelText="Email:" CreateUserText="Register New Account" CreateUserUrl="~/AddUser.aspx">
        <InstructionTextStyle Font-Italic="True" ForeColor="White" />
        <LoginButtonStyle BackColor="#403940" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="White" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#333333" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:Login>
</asp:Content>
