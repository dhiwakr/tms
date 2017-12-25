

Imports System.Data

Imports System.Data.SqlClient

Imports System.Configuration

Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim strConnstring As String = ConfigurationManager.ConnectionStrings("Conn").ConnectionString
    Dim con As New SqlConnection(strConnstring)
    Dim cmd As New SqlCommand()
    Dim selected As String



  
    'cmd.CommandType = CommandType.StoredProcedure
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            Calendar1.Visible = False
            Calendar2.Visible = False
            'trying to initialise the dropdown check mate
            Dim listdpt As ListItem = New ListItem("select department", "-1")
            DropDownList2.Items.Insert(0, listdpt)

            Label1.Visible = False
            Label10.Visible = False
            Label12.Visible = False
            Label13.Visible = False
            Label14.Visible = False
            Label15.Visible = False
            Label16.Visible = False
            Label17.Visible = False
            Label18.Visible = False
            Label4.Visible = False
            Label6.Visible = False
            Label8.Visible = False
            txtClass.Visible = False
            txtdateIssued.Visible = False
            txtDOB.Visible = False
            txtDriverName.Visible = False
            txtDriverSurname.Visible = False
            txtEmailAdd.Visible = False
            txtPhoneNumber.Visible = False
            txtLicenceNo.Visible = False
            txtPhysicalAdd.Visible = False
            DropDownList1.Visible = False
            DropDownList2.Visible = False
            DropDownList4.Visible = False
            DropDownList5.Visible = False
            ImageButton1.Visible = False
            Button1.Visible = False
            Button2.Visible = True
            Label19.Visible = True




            ''''''''''''''''''''''''''''''''''''''''

        End If


    End Sub


    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        If Calendar1.Visible Then
            Calendar1.Visible = False
        Else
            Calendar1.Visible = True

        End If

    End Sub

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        txtDOB.Text = Calendar1.SelectedDate.ToShortDateString
        Calendar1.Visible = False
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged

        selected = DropDownList2.SelectedValue

        txtClass.Text = selected
    End Sub
    'cmd.Parameters.Add("@lastname", SqlDbType.NVarChar).Value = txtlastname.Text.Trim()

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

       

        If (DropDownList5.SelectedValue = "Secretary") Then

            save_employee()

        Else

        End If
            save_employee()







        '  DropDownList1.Focus()


    End Sub
    Private Sub save_employee()



        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "SV_EMPLOYEE"
        cmd.Parameters.Add("@EmpId", SqlDbType.NChar).Value = txtDriverID.Text.Trim
        cmd.Parameters.Add("@EmpName", SqlDbType.NVarChar).Value = txtDriverName.Text.Trim
        cmd.Parameters.Add("@EmpSurname", SqlDbType.NVarChar).Value = txtDriverSurname.Text.Trim
        cmd.Parameters.Add("@DOB", SqlDbType.Date).Value = txtDOB.Text.Trim
        cmd.Parameters.Add("@Gender", SqlDbType.NChar).Value = DropDownList4.Text.Trim
        cmd.Parameters.Add("@Jobdepartmentname", SqlDbType.NVarChar).Value = DropDownList2.Text.Trim
        cmd.Parameters.Add("@Tittle", SqlDbType.NVarChar).Value = DropDownList5.SelectedValue
        cmd.Parameters.Add("@PhoneNumber", SqlDbType.NVarChar).Value = txtPhoneNumber.Text.Trim
        cmd.Parameters.Add("@PhysicalAddress", SqlDbType.NVarChar).Value = txtPhysicalAdd.Text.Trim
        cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = txtEmailAdd.Text.Trim
        cmd.Connection = con

        Try
            con.Open()
            cmd.ExecuteNonQuery()
            Label6.Text = "record inserted"
        Catch ex As Exception
            Throw ex
        Finally
            con.Close()
            con.Dispose()


        End Try

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        cmd.Connection = con
        con.Open()
        cmd.CommandType = System.Data.CommandType.StoredProcedure

        cmd.CommandText = "Get_employe_EmpId"
        cmd.Parameters.Add("@EmpId", SqlDbType.NChar).Value = txtDriverID.Text.Trim

        Dim rsuser As System.Data.SqlClient.SqlDataReader



        'Try


        rsuser = cmd.ExecuteReader(Data.CommandBehavior.CloseConnection)
        If rsuser.HasRows Then
            MsgBox("user is already in the database")
        ElseIf (txtDriverID.Text = "EmployeeID") Then
            txtDriverID.Focus()





            'ERROR USER EXIST
        Else

            Label1.Visible = True
            Label10.Visible = True
            Label12.Visible = True
            Label13.Visible = True
            Label14.Visible = True
            Label15.Visible = True
            Label16.Visible = True
            Label17.Visible = True
            Label18.Visible = True
            Label4.Visible = True
            Label6.Visible = True
            Label8.Visible = True
            txtClass.Visible = True
            txtdateIssued.Visible = True
            txtDOB.Visible = True
            txtDriverName.Visible = True
            txtDriverSurname.Visible = True
            txtEmailAdd.Visible = True
            txtLicenceNo.Visible = True
            txtPhoneNumber.Visible = True
            txtPhysicalAdd.Visible = True
            DropDownList1.Visible = True
            DropDownList2.Visible = True
            DropDownList4.Visible = True
            DropDownList5.Visible = True
            ImageButton1.Visible = True
            Button1.Visible = True
            Button2.Visible = False
            Label19.Visible = False

        End If
        con.Close()
    End Sub


    Protected Sub DropDownList5_TextChanged(sender As Object, e As EventArgs) Handles DropDownList5.TextChanged
        If (DropDownList5.SelectedValue = "Secretary") Then

            driver_details.Visible = False
            add_drive.Visible = False
        ElseIf (DropDownList5.SelectedValue = "Driver") Then
            driver_details.Visible = True
            add_drive.Visible = True
        Else
            driver_details.Visible = False
            add_drive.Visible = False

        End If
    End Sub
End Class