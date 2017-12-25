
Imports System.Collections
Imports System.ComponentModel
Imports System.Data
Imports System.Drawing
Imports System.Web
Imports System.Web.SessionState
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.HtmlControls


''' <summary>
''' Summary description for _Default.
''' </summary>
Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs)

    End Sub

#Region "Web Form Designer generated code"
    Protected Overrides Sub OnInit(e As EventArgs)
        '
        ' CODEGEN: This call is required by the ASP.NET Web Form Designer.
        '
        InitializeComponent()
        MyBase.OnInit(e)
    End Sub

    ''' <summary>
    ''' Required method for Designer support - do not modify
    ''' the contents of this method with the code editor.
    ''' </summary>
    Private Sub InitializeComponent()

    End Sub
#End Region

    Protected Sub BT_Enter_Click(sender As Object, e As System.EventArgs) Handles BT_Enter.Click
        Response.Redirect("ChatWin.aspx?Channel=" + TB_Channel.Text + "&User=" + TB_Username.Text)
    End Sub
End Class


'=======================================================
'Service provided by Telerik (www.telerik.com)
'Conversion powered by NRefactory.
'Twitter: @telerik
'Facebook: facebook.com/telerik
'=======================================================
