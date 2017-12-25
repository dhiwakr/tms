<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="change password.aspx.vb" Inherits="tms.change_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 54px; top: 14px; position: absolute; width: 86px; height: 20px" Text="Email"></asp:Label>
        <asp:Label ID="Label1" runat="server" Text="Employee ID" style="z-index: 1; left: 55px; top: 41px; position: absolute; height: 19px" Visible="False"></asp:Label>
        <asp:TextBox ID="Txtid" runat="server" style="z-index: 1; left: 167px; top: 41px; position: absolute" Visible="False"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" style="z-index: 1; left: 414px; top: 35px; position: absolute" ValidateRequestMode="Disabled">
            <asp:ListItem>please select action</asp:ListItem>
            <asp:ListItem>change password</asp:ListItem>
            <asp:ListItem>recover password</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtemail" runat="server" style="z-index: 1; left: 172px; top: 12px; position: absolute"></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="Label2" runat="server" Text="new password" style="z-index: 1; left: 45px; top: 78px; position: absolute" Visible="False"></asp:Label>
        <asp:TextBox ID="txtnewpasswrd" runat="server" style="z-index: 1; left: 166px; top: 81px; position: absolute" Visible="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="missing field" ControlToValidate="txtid" ForeColor="red" style="z-index: 1; left: 313px; top: 40px; position: absolute"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtconfrmpasswrd" runat="server" style="z-index: 1; left: 167px; top: 116px; position: absolute; right: 809px;" Visible="False"></asp:TextBox>
    
    
        <br />
     <asp:Label ID="Label3" runat="server" Text="confirm password" style="z-index: 1; left: 37px; top: 115px; position: absolute" Visible="False"></asp:Label>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="12pt" style="z-index: 1; left: 199px; top: 144px; position: absolute; height: 51px" Text="change password" Visible="False" />
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="12pt" style="z-index: 1; top: 77px; position: absolute; right: 781px; height: 54px; width: 177px" Text="recover to your email" Visible="False" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="missing field" ControlToValidate="txtnewpasswrd" ForeColor="red" style="z-index: 1; left: 315px; top: 72px; position: absolute; bottom: 566px;"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password does not match" ForeColor="Red" ControlToCompare="txtnewpasswrd" ControlToValidate="txtconfrmpasswrd" style="z-index: 1; left: 328px; top: 100px; position: absolute"></asp:CompareValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="missing field" ControlToValidate="txtconfrmpasswrd" ForeColor="red" style="z-index: 1; left: 316px; top: 113px; position: absolute"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" style="z-index: 1; left: 372px; top: 160px; position: absolute; height: 20px; width: 156px" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    
    </div>
    </form>
</body>
</html>
