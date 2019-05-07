
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox1.Text = "shraddha" And TextBox2.Text = "gajjar" Then
            Response.Redirect("~/Admin/Ahome.aspx")
        Else
            MsgBox("Enter Correct Password and User name")
        End If
    End Sub
End Class
