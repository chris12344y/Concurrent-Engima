<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewMapUser.aspx.cs" Inherits="GroupProjectV4.ViewMapUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="content_actual_table">
        <tr>
            <td>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" EmptyDataText = "No files uploaded">
        <RowStyle VerticalAlign="Middle" />
    <Columns>
        <asp:ImageField DataImageUrlField="Value" ControlStyle-Height="300" ControlStyle-Width="300" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("Value") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        
    </Columns>
        
</asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
              
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


