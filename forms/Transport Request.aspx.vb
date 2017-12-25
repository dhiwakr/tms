Imports System.Data

Imports System.Data.SqlClient
Imports System.IO
Imports System.Configuration
Imports System.Drawing


Public Class Transport_Request
    Inherits System.Web.UI.Page
    Dim strConnstring As String = ConfigurationManager.ConnectionStrings("Conn").ConnectionString
    Dim con As New SqlConnection(strConnstring)
    Dim cmd As New SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load, Panel1.PreRender, Panel1.Load
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
                If Label22.Text = "Secretary" Then
                    txtEmpID.Text = rsuser("EmpId")
                    txtDepartment.Text = rsuser("Jobdepartment")
                    txtEmpName.Text = rsuser("EmpName")
                    txtsurname.Text = rsuser("EmpSurname")
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

       
        If Not IsPostBack Then

            Calendar1.Visible = False
            Calendar2.Visible = False

        End If
        'autogetnerate numbers code
        'Dim rd As New Random
        'If txtRequestId.Text = "" Then
        '    txtRequestId.Text = rd.Next(10, 100000).ToString

        'End If

        RangeValidator1.MinimumValue = DateTime.Now.Date.ToString("MM-dd-yy")
        RangeValidator1.MaximumValue = DateTime.Now.Date.AddDays(5).ToString("MM-dd-yy")

        'RangeValidator1.MaximumValue = DateTime.Now.Date.AddYears(90).ToString("dd-MM-yy");
    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        If Calendar1.Visible Then
            Calendar1.Visible = False
        Else
            Calendar1.Visible = True
        End If
    End Sub

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        txtToDate.Text = Calendar1.SelectedDate.Date.ToShortDateString
        Calendar1.Visible = False
    End Sub

    Protected Sub txtFromDateAndTime_TextChanged(sender As Object, e As EventArgs) Handles txtFromDateAndTime.TextChanged

    End Sub

    Private Sub Calendar2_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar2.SelectionChanged
        txtFromDateAndTime.Text = Calendar2.SelectedDate.ToShortDateString

    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        If Calendar2.Visible Then
            Calendar2.Visible = False
            Calendar1.Visible = False

   
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        
        If IsValid Then
            If DropDownList1.SelectedValue = "-1" Then
                Label13.Visible = True
                Label13.BackColor = Color.Red
                Label13.Text = "please select vehicle type"

            End If
            save_request()

        End If
    End Sub

    Private Sub save_request()
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "INSERT_Transport_Request"

        cmd.Parameters.Add("@EmpID", SqlDbType.NChar).Value = txtEmpID.Text.Trim
        cmd.Parameters.Add("@EmpName", SqlDbType.NVarChar).Value = txtEmpName.Text.Trim
        cmd.Parameters.Add("@EmpSurname", SqlDbType.NVarChar).Value = txtsurname.Text.Trim
        cmd.Parameters.Add("@Department", SqlDbType.NVarChar).Value = txtDepartment.Text.Trim
        cmd.Parameters.Add("@FromPlace", SqlDbType.NVarChar).Value = txtFromPlace.Text.Trim
        cmd.Parameters.Add("@ToPlace", SqlDbType.NVarChar).Value = txtToPlace.Text.Trim
        cmd.Parameters.Add("@NumberOfPassangers", SqlDbType.Int).Value = txtNumberOfPassangers.Text.Trim
        cmd.Parameters.Add("@DateANDTime", SqlDbType.Date).Value = txtFromDateAndTime.Text.Trim
        cmd.Parameters.Add("@todatetime", SqlDbType.Date).Value = txtToDate.Text.Trim
        cmd.Parameters.Add("@ReasonForRequest", SqlDbType.NVarChar).Value = txtReasonForRequest.Text
        cmd.Parameters.Add("@VehicleType", SqlDbType.NVarChar).Value = DropDownList1.SelectedValue.Trim
        cmd.Parameters.Add("@Status", SqlDbType.Int).Value = 1
        cmd.Connection = con
        con.Open()
        cmd.ExecuteNonQuery()
        Label13.Text = "request send successfully"
        Label13.ForeColor = Color.Green

        '  Catch ex As Exception
        'Throw ex
        'Finally
        con.Close()
        con.Dispose()
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        emp_details.Visible = False
        trans_request.Visible = False

    End Sub
End Class








	