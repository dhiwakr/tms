<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/forms/Site1.Master" CodeBehind="registration.aspx.vb" Inherits="tms.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../forms/java/myjava.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 111px;
        }
        .auto-style3 {
            width: 111px;
            text-align: right;
        }
        .auto-style4 {
            width: 111px;
            text-align: right;
            height: 21px;
        }
        .auto-style5 {
            height: 21px;
        }
        .auto-style6 {
            width: 175px;
        }
        .auto-style7 {
            height: 21px;
            width: 175px;
        }

   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Employee ID:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="enter your ID" />
            </td>
            <td rowspan="3">
                <img id='output' src="../forms/pictures/cale.png" style ="   width:100px;height:100px; border-radius:75px;"/>
   
    <asp:FileUpload ID="FileUpload1" runat="server" type='file' accept='image/*' onchange='openFile(event)'/>  
               
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="name:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtname" runat="server" Visible="False" ReadOnly="True"></asp:TextBox>
            </td>
            <td rowspan="1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Surname:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtsurname" runat="server" Visible="False" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="Department:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtdepartment" runat="server" Visible="False" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="Position:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtpostiotion" runat="server" Visible="False" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text="Label"></asp:Label>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="email:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtemail" runat="server" Visible="False"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="**" ControlToValidate="txtemail"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"  ></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text="password:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtpassword" runat="server" Visible="False" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="encrypt" />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" Text="confirm password:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtconfirmpassword" runat="server" Visible="False" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidatorpassword" runat="server" 
                    ErrorMessage="your password does not mach"
                    ControlToValidate="txtconfirmpassword" ControlToCompare="txtpassword"
                    Operator="Equal" Type="String" ForeColor="Red"></asp:CompareValidator>

            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="save" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
  <br />

    <br />
    <br /><br />



</asp:Content>
