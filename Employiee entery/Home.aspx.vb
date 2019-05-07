Imports System.Data.SqlClient

Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\luck.mdf;Integrated Security=True;User Instance=True")
            Dim cmd As New SqlCommand
            Dim cnstring As String
            Dim s As String
            If DropDownList1.SelectedItem.Selected = True Then
                s = DropDownList1.SelectedItem.Text
            End If
            cn.Open()
            cnstring = "insert into Logindata values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & s & "')"
            cmd = New SqlCommand(cnstring, cn)
            cmd.ExecuteNonQuery()
            cn.Close()
            cmd = Nothing
            MsgBox("record inserted")
            Response.Redirect("show.aspx?")
        Catch ex As Exception
            MsgBox(ex.Message)

        End Try
        
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
