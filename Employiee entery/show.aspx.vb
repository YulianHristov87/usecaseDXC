Imports System.Data.SqlClient

Partial Class show
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\luck.mdf;Integrated Security=True;User Instance=True")
    Dim cnd As SqlCommand
    Dim cnstring As String
    Dim dr As SqlDataReader


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        TextBox1.Text = Request("name")
        TextBox2.Text = Request("post")
        TextBox3.Text = Request("salary")
        TextBox4.Text = Request("net")

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            cn.Open()
            cnstring = "select name,post,salary,net from employee where no=" & TextBox5.Text


            cnd = New SqlCommand(cnstring, cn)
            dr = cnd.ExecuteReader
            dr.Read()
            If dr.HasRows Then
                TextBox1.Text = dr(0)
                TextBox2.Text = dr(1)
                TextBox3.Text = dr(2)
                TextBox4.Text = dr(3)

                
            Else
                MsgBox("Enter valid number")
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
            MsgBox("Enter correct data")

        End Try

    End Sub
End Class
