<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewMaps.aspx.cs" Inherits="GroupProjectV4.ViewMaps" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="content_actual_table">
        <tr>
            <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText = "No files uploaded" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                
            </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" CommandArgument ='<%# Eval("Value") %>' runat="server" onClick ="DownloadFile" ImageUrl="/Images/Picture1.png"></asp:ImageButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID = "lnkDelete" Text = "Delete" CommandArgument = '<%# Eval("Value") %>' runat = "server" OnClick = "DeleteFile" ImageUrl="/Images/Delete.png"/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:ImageField DataImageUrlField="Value" ControlStyle-Height="100" ControlStyle-Width="100" Visible="false" >
<ControlStyle Height="100px" Width="100px"></ControlStyle>
        </asp:ImageField>
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
