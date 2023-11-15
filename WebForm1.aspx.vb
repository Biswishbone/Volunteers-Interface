Imports System.Data
Imports System.Data.SqlClient
Public Class WebForm1
    Inherits System.Web.UI.Page
    Public Shared cons As String = "server=COBBISSQL01\BIS362;Database=BIS362;Trusted_Connection=Yes;"
    Public Shared con As SqlConnection = New SqlConnection(cons)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Image1.ImageUrl = "logo.jpg"

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim name, phonenumber, email, interest, HoursVolunteered, VolunteerLocation As String
        If TextBox2.Text = Nothing Or TextBox3.Text = Nothing Or TextBox4.Text = Nothing Or TextBox5.Text = Nothing Or TextBox6.Text = Nothing Then
            MsgBox("All Fields Must Be Completed", vbExclamation, "Error")
            Exit Sub
        End If

        name = TextBox2.Text
        phonenumber = TextBox3.Text
        email = TextBox4.Text
        interest = DropDownList1.SelectedValue
        HoursVolunteered = TextBox5.Text
        VolunteerLocation = TextBox6.Text

        Dim cmdinsert As New SqlCommand("Insert into Volunteers (Name, phonenumber, Email, hoursvolunteered, volunteerlocation, interest) values (@p2, @p3, @p4, @p5, @p6, @p7)", con)
        With cmdinsert.Parameters
            .Clear()
            .AddWithValue("@p2", name)
            .AddWithValue("@p3", phonenumber)
            .AddWithValue("@p4", email)
            .AddWithValue("@p7", interest)
            .AddWithValue("@p5", HoursVolunteered)
            .AddWithValue("@p6", VolunteerLocation)
        End With
        Try
            If con.State = ConnectionState.Closed Then con.Open()
            cmdinsert.ExecuteNonQuery()
            Response.Write("Volunteer Added Succesfully")
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
    End Sub
End Class