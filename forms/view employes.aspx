<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/forms/Site1.Master" CodeBehind="view employes.aspx.vb" Inherits="tms.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../java/myjava.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Style="left: 596px; position: absolute; top: 40px"  BackColor="GreenYellow" BorderColor="Yellow" BorderStyle="Double">
 
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpId" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId" />
        <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
        <asp:BoundField DataField="EmpSurname" HeaderText="EmpSurname" SortExpression="EmpSurname" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Jobdepartmentname" HeaderText="Jobdepartmentname" SortExpression="Jobdepartmentname" />
        <asp:BoundField DataField="Tittle" HeaderText="Tittle" SortExpression="Tittle" />
        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        <asp:BoundField DataField="PhysicalAddress" HeaderText="PhysicalAddress" SortExpression="PhysicalAddress" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
    </Columns>
</asp:GridView>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="View_employees" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

        <asp:Button ID="Button1" runat="server" Text="export to exel" />

</asp:Panel>
</asp:Content>
