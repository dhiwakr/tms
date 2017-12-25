
Imports System.Net
Imports System.Net.Mail
Imports System.Drawing
Imports System.Configuration
Imports System.Data.SqlClient

Public Class change_password
    Inherits System.Web.UI.Page
    Dim strConnstring As String = ConfigurationManager.ConnectionStrings("Conn").ConnectionString
    Dim con As New SqlConnection(strConnstring)

    Dim cmd As New SqlCommand()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        If DropDownList1.SelectedValue = "change password" Then
            txtconfrmpasswrd.Visible = True
            Txtid.Visible = True
            txtnewpasswrd.Visible = True
            Button2.Visible = True
            Button1.Visible = False
        ElseIf DropDownList1.SelectedValue = "recover password" Then
            Button1.Visible = True
            Button2.Visible = False
            Txtid.Visible = True
            txtconfrmpasswrd.Visible = False
            txtnewpasswrd.Visible = False
        Else
            Button1.Visible = False
            Button2.Visible = False
            Txtid.Visible = False
            txtconfrmpasswrd.Visible = False
            txtnewpasswrd.Visible = False
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim username As String = String.Empty
        Dim password As String = String.Empty

        Using con As New SqlConnection(strConnstring)
            Using cmd As New SqlCommand("SELECT EmpId, Passwords FROM Login_tbl WHERE Email = @Email")
                cmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim())
                cmd.Connection = con
                con.Open()
                Using sdr As SqlDataReader = cmd.ExecuteReader()
                    If sdr.Read() Then
                        username = sdr("EmpId").ToString()
                        password = sdr("Passwords").ToString()

                        Dim strpass As String = base64Decode(password)
                    End If
                End Using
                con.Close()
            End Using
        End Using
        If Not String.IsNullOrEmpty(password) Then
            Dim mm As New MailMessage("trusttrinity8@gmail.com", txtemail.Text.Trim)
            mm.Subject = "Password Recovery"
            mm.Body = String.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password)
            mm.IsBodyHtml = True
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim NetworkCred As New NetworkCredential()
            NetworkCred.UserName = "trusttrinity8@gmail.com"
            NetworkCred.Password = "(spiderman1573595)"
            smtp.UseDefaultCredentials = True
            smtp.Credentials = NetworkCred
            smtp.Port = 587
            smtp.Send(mm)
            Label5.Visible = True
            Label5.ForeColor = Color.Green
            Label5.Text = "Password has been sent to your email address."
        Else
            Label5.ForeColor = Color.Red
            Label5.Text = "This email address does not match our records."
        End If
    End Sub


    Public Function base64Decode(data As String) As String
        Try
            Dim encoder As New System.Text.UTF8Encoding()
            Dim utf8Decode As System.Text.Decoder = encoder.GetDecoder()

            Dim todecode_byte As Byte() = Convert.FromBase64String(data)
            Dim charCount As Integer = utf8Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length)
            Dim decoded_char As Char() = New Char(charCount - 1) {}
            utf8Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0)
            Dim result As String = New [String](decoded_char)
            Return result
        Catch e As Exception
            Throw New Exception("Error in base64Decode" + e.Message)
        End Try
    End Function

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim strpass As String = encryptdata(txtnewpasswrd.Text.Trim)

        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "UPDT_PASSWRD"
        cmd.Parameters.Add("@EmpID", SqlDbType.NChar).Value = Txtid.Text.Trim
        cmd.Parameters.Add("@Passwords", SqlDbType.NChar).Value = strpass

        cmd.Connection = con
        con.Open()
        cmd.ExecuteNonQuery()
        Label1.Visible = True
        Label1.Text = "Password changed"
        Label1.ForeColor = Color.Green

        '  Catch ex As Exception
        'Throw ex
        'Finally
        con.Close()
        con.Dispose()
    End Sub

    Public Function encryptdata(passwod As String) As String
        Dim strmsg As String = String.Empty
        Dim encode As Byte() = New Byte(passwod.Length - 1) {}
        encode = Encoding.UTF8.GetBytes(passwod)
        strmsg = Convert.ToBase64String(encode)
        Return strmsg
    End Function

  
End Class