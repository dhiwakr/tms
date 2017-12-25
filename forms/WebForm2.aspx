<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/forms/Site1.Master" CodeBehind="WebForm2.aspx.vb" Inherits="tms.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:GridView ID="GridView1" runat="server" DataKeyNames="Number_Plate" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="NetMass" HeaderText="NetMass" SortExpression="NetMass" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="Fuel_Type" HeaderText="Fuel_Type" SortExpression="Fuel_Type" />
            <asp:BoundField DataField="Vehicle_Type" HeaderText="Vehicle_Type" SortExpression="Vehicle_Type" />
            <asp:BoundField DataField="Date_of_Purchase" HeaderText="Date_of_Purchase" SortExpression="Date_of_Purchase" />
            <asp:BoundField DataField="Chassis_Number" HeaderText="Chassis_Number" SortExpression="Chassis_Number" />
            <asp:BoundField DataField="Engine_Number" HeaderText="Engine_Number" SortExpression="Engine_Number" />
            <asp:BoundField DataField="Tyre_Size" HeaderText="Tyre_Size" SortExpression="Tyre_Size" />
            <asp:BoundField DataField="Fuel_Consumption" HeaderText="Fuel_Consumption" SortExpression="Fuel_Consumption" />
            <asp:BoundField DataField="Additional_Information" HeaderText="Additional_Information" SortExpression="Additional_Information" />
            <asp:BoundField DataField="Number_Plate" HeaderText="Number_Plate" ReadOnly="True" SortExpression="Number_Plate" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TMSConnectionString %>" SelectCommand="SELECT * FROM [ADD_Vehicle_Allocation]"></asp:SqlDataSource>

</asp:Content>
