Imports System.Data.SqlClient

Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim dr As SqlDataReader
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\luck.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand
        Dim cnstring As String
        cn.Open()
        cnstring = "Select name,post,salary,net from employee where no = " & TextBox1.Text & " and name = '" & TextBox2.Text & "' "

        cmd = New SqlCommand(cnstring, cn)
        dr = cmd.ExecuteReader
        dr.Read()
        Response.Redirect("show.aspx?name=" & dr(0) & "&post=" & dr(1) & "&salary=" & dr(2) & "&net=" & dr(3))



        cmd.ExecuteNonQuery()
        cn.Close()
        cmd = Nothing

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
