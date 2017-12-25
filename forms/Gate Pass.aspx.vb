Public Class Gate_Pass
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Calendar1.Visible = False
            Calendar2.Visible = False
            Calendar3.Visible = False

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
        txtCheckedDate.Text = Calendar1.SelectedDate.ToShortDateString
        Calendar1.Visible = False
    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        If Calendar2.Visible Then
            Calendar2.Visible = False
        Else
            Calendar2.Visible = True

        End If
    End Sub

    Protected Sub Calendar2_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar2.SelectionChanged
        txtDayOut.Text = Calendar2.SelectedDate.ToShortDateString
        Calendar2.Visible = False
    End Sub

  
    Protected Sub ImageButton3_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton3.Click
        If Calendar3.Visible Then
            Calendar3.Visible = False
        Else
            Calendar3.Visible = True
        End If
    End Sub

    Protected Sub Calendar3_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar3.SelectionChanged
        txtDayIn.Text = Calendar3.SelectedDate.ToShortTimeString
        Calendar3.Visible = False
    End Sub
End Class