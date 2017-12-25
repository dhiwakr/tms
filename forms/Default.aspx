<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="tms._Default" %>

<!DOCTYPE html>

<HTML>
	<HEAD>
		<title>Default</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 268px; POSITION: absolute; TOP: 196px" cellSpacing="1"
				cellPadding="1" width="300" border="0">
				<TR>
					<TD>
						<asp:Label id="Label1" runat="server">Channel</asp:Label></TD>
					<TD>
						<asp:TextBox id="TB_Channel" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage=" * Required" ControlToValidate="TB_Channel"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD>
						<asp:Label id="Label2" runat="server">Username</asp:Label></TD>
					<TD>
						<asp:TextBox id="TB_Username" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="* Required" ControlToValidate="TB_Username"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD></TD>
					<TD>
						<asp:Button id="BT_Enter" runat="server" Text="Join Chat" onclick="BT_Enter_Click"></asp:Button></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
