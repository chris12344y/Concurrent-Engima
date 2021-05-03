<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserControlPanel.aspx.cs" Inherits="GroupProjectV4.UserControlPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="333333" ForeColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
        </Columns>
        <EditRowStyle BackColor="#333333" />
        <FooterStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#333333" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#333333" ForeColor="White" />
        <SelectedRowStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#333333" />
        <SortedAscendingHeaderStyle BackColor="#333333" />
        <SortedDescendingCellStyle BackColor="#333333" />
        <SortedDescendingHeaderStyle BackColor="#333333" />
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserConnectionString %>" SelectCommand="SELECT [Name], [Email], [Role] FROM [Users]"></asp:SqlDataSource>
<asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Email" DataSourceID="UpdateCustomerDataSource" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
    <EditRowStyle BackColor="#999999" />
    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
        <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Fields>
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
</asp:DetailsView>
<asp:SqlDataSource ID="UpdateCustomerDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UserConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Users] ([Name], [Password], [Email], [Role]) VALUES (@Name, @Password, @Email, @Role)" SelectCommand="SELECT * FROM [Users] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [Password] = @Password, [Role] = @Role WHERE [Email] = @Email">
    <DeleteParameters>
        <asp:Parameter Name="Email" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Role" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="Email" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="Role" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
 <asp:Button ID="Maps" runat="server" PostBackUrl="~/ViewMaps.aspx" Text="Manage Maps" ValidationGroup="master" CssClass="button" />

</asp:Content>

