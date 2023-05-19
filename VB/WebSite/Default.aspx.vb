Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub

	Public Sub ItemRequestedByValue(ByVal source As Object, ByVal e As DevExpress.Web.ListEditItemRequestedByValueEventArgs)
		Dim value As Integer = 0
		If e.Value Is Nothing OrElse Not Int32.TryParse(e.Value.ToString(), value) Then
			Return
		End If

		Dim comboBox As ASPxComboBox = DirectCast(source, ASPxComboBox)

		Dim dataContext As New DataClassesDataContext()

		Dim id As Integer = Int32.Parse(e.Value.ToString())
		Dim query = From category In dataContext.Categories
			Where category.CategoryID = id
			Select category

		Dim count = query.Count()

		comboBox.DataSource = query
		comboBox.DataBind()
	End Sub

	Public Sub ItemsRequestedByFilterCondition(ByVal source As Object, ByVal e As DevExpress.Web.ListEditItemsRequestedByFilterConditionEventArgs)
		Dim comboBox As ASPxComboBox = DirectCast(source, ASPxComboBox)

		Dim skip = e.BeginIndex
		Dim take = e.EndIndex - e.BeginIndex + 1

		Dim dataContext As New DataClassesDataContext()
		Dim queryStartWidth = (
			From category In dataContext.Categories
			Where category.CategoryName.StartsWith(e.Filter)
			Order By category.CategoryName
			Select category).Skip(skip).Take(take)

		comboBox.DataSource = queryStartWidth
		comboBox.DataBind()
	End Sub
End Class