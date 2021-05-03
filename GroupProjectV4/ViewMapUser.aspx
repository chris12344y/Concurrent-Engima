<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewMapUser.aspx.cs" Inherits="GroupProjectV4.ViewMapUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="content_actual_table">
        <tr>
            <td>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" EmptyDataText = "No files uploaded" CellPadding="4" ForeColor="#333333" GridLines="None">
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle VerticalAlign="Middle" BackColor="#F7F6F3" ForeColor="#333333" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:ImageField DataImageUrlField="Value" ControlStyle-Height="300" ControlStyle-Width="300" >
<ControlStyle Height="300px" Width="300px"></ControlStyle>
        </asp:ImageField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" CommandArgument ='<%# Eval("Value") %>' runat="server" onClick ="DownloadFile" ImageUrl="/Images/Picture1.png"></asp:ImageButton>
            </ItemTemplate>
        </asp:TemplateField>
        
    </Columns>
        
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        
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


