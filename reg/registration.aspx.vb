
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Text
Imports System.Web.UI.WebControls
Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class registration
    Inherits System.Web.UI.Page
    Dim strConnstring As String = ConfigurationManager.ConnectionStrings("Conn").ConnectionString
    Dim con As New SqlConnection(strConnstring)
    Dim cmd As New SqlCommand()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Visible = False
        Label3.Visible = False
        Label4.Visible = False
        Label5.Visible = False
        Label6.Visible = False
        Label7.Visible = False
        Label8.Visible = False
        FileUpload1.Visible = False
        Button2.Visible = False
    End Sub
    Private Sub save_login()
        cmd.Connection = con
        con.Open()
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "Get_employe_EmpId"
        cmd.Parameters.Add("@EmpId", SqlDbType.NChar).Value = txtid.Text.Trim

        Dim rsuser As System.Data.SqlClient.SqlDataReader



        'Try

        rsuser = cmd.ExecuteReader(Data.CommandBehavior.CloseConnection)
        If rsuser.HasRows Then
            While rsuser.Read
                Label2.Visible = True
                Label3.Visible = True
                Label4.Visible = True
                Label5.Visible = True
                Label6.Visible = True
                Label7.Visible = True
                Label8.Visible = True
                FileUpload1.Visible = True
                Button2.Visible = True
                Button1.Visible = False

                txtname.Visible = True
                txtsurname.Visible = True
                txtdepartment.Visible = True
                txtpostiotion.Visible = True
                txtemail.Visible = True
                txtpassword.Visible = True
                txtconfirmpassword.Visible = True



                txtid.Text = rsuser("EmpId")
                txtname.Text = rsuser("EmpName")
                txtsurname.Text = rsuser("EmpSurname")
                txtdepartment.Text = rsuser("Jobdepartmentname")
                txtpostiotion.Text = rsuser("Tittle")
                txtemail.Text = rsuser("Email")



            End While
        End If
        Label6.Text = "record inserted"
        'Catch ex As Exception
        '    Throw ex
        'Finally
        '    con.Close()
        '    con.Dispose()
        'End Try
    End Sub
   
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cmd.Connection = con
        con.Open()
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "Get_employe_EmpId"
        cmd.Parameters.Add("@EmpId", SqlDbType.NChar).Value = txtid.Text.Trim

        Dim rsuser As System.Data.SqlClient.SqlDataReader



        'Try

        rsuser = cmd.ExecuteReader(Data.CommandBehavior.CloseConnection)
        If rsuser.HasRows Then
            While rsuser.Read
                Label2.Visible = True
                Label3.Visible = True
                Label4.Visible = True
                Label5.Visible = True
                Label6.Visible = True
                Label7.Visible = True
                Label8.Visible = True

                txtname.Visible = True
                txtsurname.Visible = True
                txtdepartment.Visible = True
                txtpostiotion.Visible = True
                txtemail.Visible = True
                txtpassword.Visible = True
                txtconfirmpassword.Visible = True
                Button2.Visible = True
                FileUpload1.Visible = True


                txtid.Text = rsuser("EmpId")
                txtname.Text = rsuser("EmpName")
                txtsurname.Text = rsuser("EmpSurname")
                txtdepartment.Text = rsuser("Jobdepartmentname")
                txtpostiotion.Text = rsuser("Tittle")
                txtemail.Text = rsuser("Email")



            End While

        Else
            Label9.Text = "please report to administration for registration"
            Label9.BackColor = Drawing.Color.Red

        End If

        'Catch ex As Exception
        '    Throw ex
        'Finally
        con.Close()
        '    con.Dispose()
        'End Try

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim strpass As String = encryptdata(txtpassword.Text)

        If (Page.IsValid) Then
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = "SV_User_Login"
            cmd.Parameters.Add("@EmpId", SqlDbType.NChar).Value = txtid.Text.Trim
            cmd.Parameters.Add("@EmpName", SqlDbType.NVarChar).Value = txtname.Text.Trim
            cmd.Parameters.Add("@EmpSurname", SqlDbType.NVarChar).Value = txtsurname.Text.Trim
            cmd.Parameters.Add("@Jobdepartment", SqlDbType.NVarChar).Value = txtdepartment.Text.Trim
            cmd.Parameters.Add("@Tittle", SqlDbType.NVarChar).Value = txtpostiotion.Text.Trim
            cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = txtemail.Text.Trim
            cmd.Parameters.Add("@passwords", SqlDbType.NVarChar).Value = strpass

            If (FileUpload1.HasFile) Then

                Dim filename As String = FileUpload1.PostedFile.FileName
                Dim filelength As Integer = FileUpload1.PostedFile.ContentLength
                Dim imagebyte As Byte() = New Byte(filelength - 1) {}

                FileUpload1.PostedFile.InputStream.Read(imagebyte, 0, filelength)
                'cmd.CommandType = CommandType.StoredProcedure
                'cmd.CommandText = "INSERTIMAGE"
                'cmd.Parameters.Add("@filename", SqlDbType.VarChar, 250).Value = filename

                cmd.Parameters.Add("@picture", SqlDbType.Image).Value = imagebyte


                'cmd.Parameters.Add("@active", SqlDbType.Bit).Value = True

            End If

            cmd.Connection = con
            Try
               


                con.Open()
                cmd.ExecuteNonQuery()
                Response.Redirect("~/login.aspx")

            Catch ex As Exception
                Throw ex
            Finally
                con.Close()
                con.Dispose()


            End Try
        Else
            MsgBox("too bad")
        End If


      

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim strpass As String = encryptdata(TextBox1.Text)
        MsgBox(strpass)
        Dim nice_work As String = decryptdata(TextBox1.Text)
        MsgBox(nice_work)
    End Sub

    Private Function decryptdata(encrytpwd As String) As String
        Dim decryptpass As String = String.Empty
        Dim encodepwd As New UTF8Encoding()
        Dim decode As Decoder = encodepwd.GetDecoder()
        Dim todecode_byte As Byte() = Convert.FromBase64String(encrytpwd)
        Dim charcount As Integer = decode.GetCharCount(todecode_byte, 0, todecode_byte.Length)
        Dim decoded_char As Char() = New Char(charcount - 1) {}
        decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0)
        decryptpass = New String(decoded_char)
        Return decryptpass


    End Function

    Public Function encryptdata(passwod As String) As String
        Dim strmsg As String = String.Empty
        Dim encode As Byte() = New Byte(passwod.Length - 1) {}
        encode = Encoding.UTF8.GetBytes(passwod)
        strmsg = Convert.ToBase64String(encode)
        Return strmsg
    End Function

End Class






