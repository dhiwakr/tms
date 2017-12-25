Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO

Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

        End If
    End Sub

    Protected Sub GridView2_SelectedIndexChanging(sender As Object, e As GridViewSelectEventArgs) Handles GridView2.SelectedIndexChanging
        Dim row As GridViewRow = GridView2.SelectedValue
        Label1.Text = "You selected " & row.Cells(2).Text & "."

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.ClearContent()
        Response.AppendHeader("content-disposition", "attachment; filename=employee.xls")
        Response.ContentType = "application/excel"
        Dim stringwriter As StringWriter = New StringWriter()
        Dim htmlwriter As HtmlTextWriter = New HtmlTextWriter(stringwriter)
        GridView2.RenderControl(htmlwriter)
        Response.Write(stringwriter.ToString())
        Response.[End]()






    End Sub

    Public Overrides Sub VerifyRenderingInServerForm(ByVal Control As Control)

    End Sub
End Class