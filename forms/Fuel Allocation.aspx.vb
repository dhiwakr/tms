
Imports System.Web.Security
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Drawing

Public Class Fuel_Allocation
    Inherits System.Web.UI.Page
    Dim strConnstring As String = ConfigurationManager.ConnectionStrings("Conn").ConnectionString
    Dim con As New SqlConnection(strConnstring)
    Dim cmd As New SqlCommand()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cmd.Connection = con
        con.Open()
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "GT_USER_DETAILS"
        Dim sessions As String = CType(Session.Item("EmpId"), String)
        cmd.Parameters.Add("@EmpId", SqlDbType.NChar).Value = sessions
        Dim rsuser As System.Data.SqlClient.SqlDataReader
        rsuser = cmd.ExecuteReader(Data.CommandBehavior.CloseConnection)
        If rsuser.HasRows Then
            While rsuser.Read

                Label22.Text = rsuser("Tittle")
                If Label22.Text = "FuelAttended" Then
                    txtEmpcode.Text = rsuser("EmpId")
                    txtdepartment.Text = rsuser("Jobdepartment")
                    txtEmpName.Text = rsuser("EmpName")
                    txtSurname.Text = rsuser("EmpSurname")
                    '   Image1.ImageUrl = rsuser("picture")
                Else
                    Response.Redirect("~/forms/wellcome.aspx")
                    MsgBox("not allowed to view that page")
                End If
               
            End While
        Else
            Label22.Text = "please report to administration for registration"
            Label22.BackColor = Drawing.Color.Red
        End If

       
    End Sub




    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub
End Class