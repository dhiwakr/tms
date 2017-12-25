Imports System.Web.Security
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Drawing
Imports System.IO
Imports System.Web.UI.WebControls.Image



Public Class wellcome

    Inherits System.Web.UI.Page
    Dim strConnstring As String = ConfigurationManager.ConnectionStrings("Conn").ConnectionString
    Dim con As New SqlConnection(strConnstring)
    Dim cmd As New SqlCommand()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim sessions As String = CType(Session.Item("EmpId"), String)



    End Sub
    

End Class