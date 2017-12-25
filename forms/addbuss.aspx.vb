Imports System.Data

Imports System.Data.SqlClient
Imports System.IO
Imports System.Configuration
Imports System.Drawing



Public Class addbuss
    Inherits System.Web.UI.Page
    Dim strConnstring As String = ConfigurationManager.ConnectionStrings("Conn").ConnectionString
    Dim con As New SqlConnection(strConnstring)
    Dim cmd As New SqlCommand






    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Calendar1.Visible = False

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
        txtDateOfPurchase.Text = Calendar1.SelectedDate.ToShortDateString
        Calendar1.Visible = False
    End Sub

    Protected Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click
        If (DropDownList1.SelectedValue = "-1") Then
            lblMessage.Text = "please select and item"

            DropDownList1.Focus()
        Else
            save_vehicle()
        End If


    End Sub
   
    Private Sub save_vehicle()


        ' DropDownList1.SelectedValue = "-1"

        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "SV_Vehicle"
        cmd.Parameters.Add("@Make", SqlDbType.NChar).Value = txtMake.Text.Trim
        cmd.Parameters.Add("@Model", SqlDbType.NVarChar).Value = txtModel.Text.Trim
        cmd.Parameters.Add("@NetMass", SqlDbType.Char).Value = txtNetMass.Text.Trim
        cmd.Parameters.Add("@color", SqlDbType.NVarChar).Value = txtColor.Text.Trim
        cmd.Parameters.Add("@FuelType", SqlDbType.Char).Value = DropDownList1.SelectedValue.Trim
        cmd.Parameters.Add("@vehicleType", SqlDbType.NVarChar).Value = DropDownList1.Text.Trim
        cmd.Parameters.Add("@DateOFPurchase", SqlDbType.Date).Value = txtDateOfPurchase.Text.Trim
        cmd.Parameters.Add("@ChassisNumber", SqlDbType.NChar).Value = txtChassisNumber.Text.Trim
        cmd.Parameters.Add("@EngineNumber", SqlDbType.NVarChar).Value = txtEngineNumber.Text.Trim
        cmd.Parameters.Add("@tyresize", SqlDbType.Int).Value = txttiresize.Text.Trim
        cmd.Parameters.Add("@FuelConsumption", SqlDbType.NVarChar).Value = txtfuelconsumption.Text.Trim
        cmd.Parameters.Add("@AdditionalInfo", SqlDbType.NVarChar).Value = txtadditional_info.Text.Trim






        If (FileUpload1.HasFile) Then

            Dim filename As String = FileUpload1.PostedFile.FileName
            Dim filelength As Integer = FileUpload1.PostedFile.ContentLength
            Dim imagebyte As Byte() = New Byte(filelength - 1) {}

            FileUpload1.PostedFile.InputStream.Read(imagebyte, 0, filelength)
            'cmd.CommandType = CommandType.StoredProcedure
            'cmd.CommandText = "INSERTIMAGE"
            'cmd.Parameters.Add("@filename", SqlDbType.VarChar, 250).Value = filename

            cmd.Parameters.Add("@fileContent", SqlDbType.Image).Value = imagebyte
            'cmd.Parameters.Add("@active", SqlDbType.Bit).Value = True

        End If
        cmd.Parameters.Add("@NumberPlate", SqlDbType.NChar).Value = txtVehicleRegistration.Text.Trim
        cmd.Connection = con
        '   Try
        con.Open()
        cmd.ExecuteNonQuery()
        lblMessage.Text = "Book Record saved successfully"
        lblMessage.ForeColor = Color.Green

        '  Catch ex As Exception
        'Throw ex
        'Finally
        con.Close()
        con.Dispose()
        'ClearControls()
        'Catch generatedExpectionName As Exception
        '    lblMessage.Text = "Book Record could not be saved"
        '    lblMessage.ForeColor = Color.Red
        'Finally
        '    con.Close()
        '    cmd.Dispose()
        '    fileName = Nothing
        '    filePath = Nothing
        '    fs = Nothing
        '    br = Nothing

        'End Try




    End Sub





    Private Sub ClearControls()

        txtMake.Text = String.Empty

        txtModel.Text = String.Empty

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        If (DropDownList1.SelectedValue = "Select Type") Then
            Response.Write("please select and item")
        End If

    End Sub

End Class