<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UploadMap.aspx.cs" Inherits="GroupProjectV4.UploadMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/CSS-Sheets/Style-master.css" media="screen" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="/Page_Wallpapers/map-texture.png" class="content_background" />
    <div id="test1" class="content_actual">
    <table>
        <tr>
            <td>
                <asp:Label ID="MapNameLabel" runat="server" Text="Map Name: " CssClass="label_upload"></asp:Label>
                <asp:TextBox ID="MapNameTxtBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="MapNameValidator" runat="server" ControlToValidate="MapNameTxtBox" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td class="content_actual">
                <asp:Label ID="mapNameTakenLabel" runat="server" ForeColor="#CC3300" Text="*Map name taken or invalid" Visible="False" CssClass="label_upload"></asp:Label>
            </td>
            <td class="content_actual"><asp:Panel ID="frmConfirmation" Visible="False" Runat="server">
</asp:Panel></td>
        </tr>
        <tr>
            <td class="content_actual">
                <asp:Label ID="UploadMapLabel" runat="server" Text="Upload a map:" CssClass="label_upload"></asp:Label>
                <INPUT ID="mapFile" type="file" NAME="mapFile" runat="server" /><asp:RequiredFieldValidator ID="MapFileValidator" runat="server" ControlToValidate="mapFile" ErrorMessage="*" ForeColor="#CC3300" CssClass="label_upload"></asp:RequiredFieldValidator>            </td>
            <td>
                <div id="label_result">
                    <asp:Label id="mapUploadResult" Runat="server" ForeColor="#CC3300"></asp:Label>
                 </div>
            </td>
   
        </tr>
        <tr>
            <td>
                <asp:Button ID="UploadButton" type="submit" runat="server" Text="Upload" OnClick="UploadButton_Click" CssClass="button" />
            </td>
            
            
        </tr>
    </table>
        </div>
</asp:Content>
