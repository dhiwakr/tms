Imports System.Web.Security
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Drawing

Public Class login
    Inherits System.Web.UI.Page
    Dim strConnstring As String = ConfigurationManager.ConnectionStrings("Conn").ConnectionString
    Dim con As New SqlConnection(strConnstring)

    Dim cmd As New SqlCommand()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim rootWebConfig As System.Configuration.Configuration
        'Page.Title = "Moving Company"
        'Try
        '    rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/tms")
        '    Dim connString As System.Configuration.ConnectionStringSettings
        '    connString = rootWebConfig.ConnectionStrings.ConnectionStrings("Conn")
        '    con.ConnectionString = connString.ToString
        '    con.Open()
        '    cmdOK.Enabled = True
        '    'btnNewUser.Enaboled = True
        'Catch
        '    'btnLogin.Enabled = False
        '    DispenseMsg(Err.Description)
        'End Try
    End Sub
    Private Sub DispenseMsg(ByVal Message As String)
        Dim sb As New System.Text.StringBuilder()
        sb.Append("<script type = 'text/javascript'>")
        sb.Append("window.onload=function(){")
        sb.Append("alert('")
        sb.Append(Message)
        sb.Append("')};")
        sb.Append("</script>")
        ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", sb.ToString())
    End Sub

    Protected Sub cmdOK_Click(sender As Object, e As EventArgs) Handles cmdOK.Click

        If txtUseName.Text = "" Then
            DispenseMsg("Please enter username")
            txtUseName.Focus()
            Exit Sub
        End If
        If txtPassword.Text = "" Then
            DispenseMsg("Please enter Password")
            txtPassword.Focus()
            Exit Sub
        End If


        cmd.Connection = con
        con.Open()
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "GT_LOG_STATUS"
        cmd.Parameters.Add("@EmpId", SqlDbType.NChar).Value = txtUseName.Text.Trim
        cmd.Parameters.Add("@Status", SqlDbType.Bit).Value = 1

        Dim rsuser As Object
        rsuser = cmd.ExecuteScalar


        If rsuser IsNot Nothing Then
            Dim msg As String = rsuser.ToString

            If msg = "OK" Then
                con.Close()
                Dim cmdSQL As New SqlClient.SqlCommand


                With cmdSQL
                    .Connection = con
                    Dim strpass As String = encryptdata(txtPassword.Text)
                    con.Open()
                    .CommandType = CommandType.StoredProcedure
                    .CommandText = "Check_Role"
                    .Parameters.AddWithValue("@UserName", txtUseName.Text)
                    .Parameters.AddWithValue("@Password", strpass)
                    .Parameters.Add("@Is_Valid", SqlDbType.Int).Direction = ParameterDirection.Output
                    cmdSQL.ExecuteNonQuery()

                End With

                ' Catch errors in case record already exists.
                Try
                    With cmdSQL

                        Dim loginstatus As String = cmdSQL.Parameters("@Is_Valid").Value.ToString()
                        If loginstatus = 1 Or loginstatus = 2 Or loginstatus = 3 Or loginstatus = 4 Or loginstatus = 5 Or loginstatus = 6 Then
                            Session("EmpId") = txtUseName.Text
                            If loginstatus = 1 Then
                                'secretary
                                FormsAuthentication.RedirectFromLoginPage(txtUseName.Text.ToString, True)
                                Response.Redirect("~/forms/wellcome.aspx")
                            ElseIf loginstatus = 2 Then
                                'transport manager
                                FormsAuthentication.RedirectFromLoginPage(txtUseName.Text.ToString, True)
                                Response.Redirect("~/forms/wellcome.aspx")
                            ElseIf loginstatus = 3 Then
                                'fuel
                                FormsAuthentication.RedirectFromLoginPage(txtUseName.Text.ToString, True)
                                Response.Redirect("~/forms/wellcome.aspx")
                            ElseIf loginstatus = 4 Then
                                'security
                                FormsAuthentication.RedirectFromLoginPage(txtUseName.Text.ToString, True)
                                Response.Redirect("~/forms/wellcome.aspx")

                            Else
                                'driver
                                FormsAuthentication.RedirectFromLoginPage(txtUseName.Text.ToString, True)
                                Response.Redirect("~/forms/wellcome.aspx")
                            End If
                        Else

                            Label1.Visible = True
                            Label1.Text = "Invalid Login Details!!"



                        End If



                    End With

                Catch

                End Try
            Else
                Label1.Visible = True
                Label1.Text = "You are already logged in"



            End If


            con.Close()

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
    Public Function encryptdata(passwod As String) As String
        Dim strmsg As String = String.Empty
        Dim encode As Byte() = New Byte(passwod.Length - 1) {}
        encode = Encoding.UTF8.GetBytes(passwod)
        strmsg = Convert.ToBase64String(encode)
        Return strmsg
    End Function
    'Public Function SESSION(EmpId As String) As String
    '   Session["EmpId"]=txtUseName.text
    '    Return
    'End Function

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "UPDT_LOGOFF"
        cmd.Parameters.Add("@EmpID", SqlDbType.NChar).Value = txtUseName.Text.Trim
        'Session("EmpId")
        cmd.Parameters.Add("@Statuss", SqlDbType.NChar).Value = 0

        cmd.Connection = con
        con.Open()
        Dim count As Object
        count = cmd.ExecuteScalar
        If count IsNot Nothing Then
            Dim msg As String = count.ToString
            If msg = "nice" Then
                ' count = cmd.ExecuteNonQuery()
                Label1.Visible = True
                Label1.Text = "you are logged off"
                Label1.ForeColor = Color.Green
            End If
        End If
       


        '  Catch ex As Exception
        'Throw ex
        'Finally
        con.Close()
        con.Dispose()
    End Sub
End Class