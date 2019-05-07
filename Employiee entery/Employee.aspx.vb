Imports System.Data.SqlClient

Partial Class Employee
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\luck.mdf;Integrated Security=True;User Instance=True")
    Dim cnd As SqlCommand
    Dim cnstring As String
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit.Click

        Try

            Dim da, hra, pf, allow, ded, net, salary, it As Integer
            salary = Dl.SelectedValue


            da = salary * TextBox9.Text / 100
            hra = salary * TextBox10.Text / 100
            it = salary * TextBox11.Text / 100
            pf = salary * TextBox15.Text / 100



            ded = pf + it
            allow = salary + da + hra
            net = allow - ded
            TextBox8.Text = salary
            TextBox12.Text = allow
            TextBox13.Text = ded
            TextBox14.Text = net

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Protected Sub Refress_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Refress.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""
        TextBox10.Text = ""
        TextBox11.Text = ""
        TextBox12.Text = ""
        TextBox13.Text = ""
        TextBox14.Text = ""
        TextBox15.Text = ""

    End Sub

    Protected Sub Insert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Insert.Click
        Try
            Dim s, ss As String
            If D1.SelectedItem.Selected = True Then
                s = Dl.SelectedItem.Text
            End If
            If Dl.SelectedItem.Selected = True Then
                ss = Dl.SelectedItem.Text

            End If
            cn.Open()
            cnstring = "Insert into employee values(" & TextBox1.Text & ",'" & TextBox2.Text & " ','" & TextBox3.Text & "','" & TextBox4.Text & "'," & TextBox5.Text & ",'" & TextBox6.Text & "'," & TextBox7.Text & ",'" & s & "','" & ss & "'," & TextBox8.Text & "," & TextBox9.Text & "," & TextBox10.Text & "," & TextBox11.Text & "," & TextBox15.Text & "," & TextBox12.Text & "," & TextBox13.Text & "," & TextBox14.Text & ")"

            cnd = New SqlCommand(cnstring, cn)
            cnd.ExecuteNonQuery()
            cn.Close()
            cnd = Nothing
            MsgBox("record inserted")

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try

    End Sub

    Protected Sub Delete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Delete.Click
        Try
            cn.Open()
            cnstring = "delete  employee where no=" & TextBox1.Text
            cnd = New SqlCommand(cnstring, cn)
            ' cmd.Parameters.Add("@no", Data.SqlDbType.Int).Value.TextBox1.Text()

            cnd.ExecuteNonQuery()
            MsgBox("record deleted")

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try
        
    End Sub


    Protected Sub Button1_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            cn.Open()
            cnstring = "select name,address,city,age,email,Contactno,bg,post,salary,da,hra,it,pf,allow,ded,net from employee where no=" & TextBox1.Text


            cnd = New SqlCommand(cnstring, cn)
            dr = cnd.ExecuteReader
            dr.Read()
            If dr.HasRows Then
                TextBox2.Text = dr(0)
                TextBox3.Text = dr(1)
                TextBox4.Text = dr(2)
                TextBox5.Text = dr(3)
                TextBox6.Text = dr(4)
                TextBox7.Text = dr(5)

                Dim i As Integer
                For i = 0 To Dl.Items.Count - 1
                    If D1.Items.Item(i).Text = dr(6) Then

                        D1.Items.Item(i).Selected = True
                        Exit For
                    Else
                        D1.Items.Item(i).Selected = False
                    End If
                Next
                Dim n As Integer
                For n = 0 To Dl.Items.Count - 1
                    If Dl.Items.Item(n).Text = dr(7) Then

                        Dl.Items.Item(n).Selected = True
                        Exit For
                    Else
                        Dl.Items.Item(n).Selected = False
                    End If
                Next


                TextBox8.Text = dr(8)
                TextBox9.Text = dr(9)
                TextBox10.Text = dr(10)
                TextBox11.Text = dr(11)
                TextBox15.Text = dr(12)
                TextBox12.Text = dr(13)
                TextBox13.Text = dr(14)
                TextBox14.Text = dr(15)

            Else
                MsgBox("Enter valid number")
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
            MsgBox("Enter correct data")

        End Try

    End Sub

    Protected Sub Updete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Updete.Click
        Try
            cn.Open()
            cnstring = ("update employee set name=@n,address=@a,city=@c,age=@age,email=@email,Contactno=@cno,bg=@bg,post=@post,salary=@salary,da=@da,hra=@hra,it=@it,pf=@pf,allow=@allow,ded=@ded,net=@net where no=@noo")
            cnd = New SqlCommand(cnstring, cn)
            cnd.Parameters.Add("@n", Data.SqlDbType.VarChar).Value = TextBox2.Text
            cnd.Parameters.Add("@a", Data.SqlDbType.VarChar).Value = TextBox3.Text
            cnd.Parameters.Add("@c", Data.SqlDbType.VarChar).Value = TextBox4.Text
            cnd.Parameters.Add("@age", Data.SqlDbType.Int).Value = TextBox5.Text
            cnd.Parameters.Add("@email", Data.SqlDbType.VarChar).Value = TextBox6.Text
            cnd.Parameters.Add("@cno", Data.SqlDbType.Int).Value = TextBox7.Text
            cnd.Parameters.Add("@bg", Data.SqlDbType.VarChar).Value = D1.SelectedItem.Text
            cnd.Parameters.Add("@post", Data.SqlDbType.VarChar).Value = Dl.SelectedItem.Text
            cnd.Parameters.Add("@salary", Data.SqlDbType.Int).Value = TextBox8.Text
            cnd.Parameters.Add("@da", Data.SqlDbType.Int).Value = TextBox9.Text
            cnd.Parameters.Add("@hra", Data.SqlDbType.Int).Value = TextBox10.Text
            cnd.Parameters.Add("@it", Data.SqlDbType.Int).Value = TextBox11.Text
            cnd.Parameters.Add("@pf", Data.SqlDbType.Int).Value = TextBox15.Text
            cnd.Parameters.Add("@allow", Data.SqlDbType.Int).Value = TextBox12.Text
            cnd.Parameters.Add("@ded", Data.SqlDbType.Int).Value = TextBox13.Text
            cnd.Parameters.Add("@net", Data.SqlDbType.Int).Value = TextBox14.Text
            cnd.Parameters.Add("@noo", Data.SqlDbType.Int).Value = TextBox1.Text
            cnd.ExecuteNonQuery()

            MsgBox("Recored Updated")

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try

    End Sub
End Class
