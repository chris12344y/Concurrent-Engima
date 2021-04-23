<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserControlPanel.aspx.cs" Inherits="GroupProjectV4.UserControlPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="UserData" DataTextField="Name" DataValueField="Name">
</asp:DropDownList>
<asp:SqlDataSource ID="UserData" runat="server" ConnectionString="<%$ ConnectionStrings:UserConnectionString %>" SelectCommand="SELECT [Name] FROM [Users]"></asp:SqlDataSource>
</asp:Content>

