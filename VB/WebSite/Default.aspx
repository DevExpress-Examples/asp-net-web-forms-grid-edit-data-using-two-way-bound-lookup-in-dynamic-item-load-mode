<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
        ClientIDMode="AutoID" DataSourceID="SqlDataSource1" KeyFieldName="ProductID">
        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True" ShowNewButton="true"/>
            <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" 
                VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="CategoryID" VisibleIndex="2">
                <PropertiesComboBox TextField="CategoryName" ValueField="CategoryID" ValueType="System.String" IncrementalFilteringMode="Contains" EnableCallbackMode="true" CallbackPageSize="7"
                    OnItemRequestedByValue="ItemRequestedByValue" OnItemsRequestedByFilterCondition="ItemsRequestedByFilterCondition">
                </PropertiesComboBox>
                <EditItemTemplate>
                    <dx:ASPxGridLookup ID="ASPxGridLookup1" runat="server" 
                        AutoGenerateColumns="False" DataSourceID="LinqServerModeDataSource1" 
                        KeyFieldName="CategoryID" TextFormatString="{1}" 
                        Value='<%# Bind("CategoryID") %>' IncrementalFilteringMode="Contains">
                        <GridViewProperties>
                            <SettingsBehavior AllowFocusedRow="True" AllowSelectSingleRowOnly="True" />
                        </GridViewProperties>
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="0">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                    </dx:ASPxGridLookup>
                    
                </EditItemTemplate>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
        DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" 
        InsertCommand="INSERT INTO [Products] ([ProductName], [CategoryID]) VALUES (@ProductName, @CategoryID)" 
        SelectCommand="SELECT [ProductID], [ProductName], [CategoryID] FROM [Products]" 
        UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [CategoryID] = @CategoryID WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <dx:LinqServerModeDataSource ID="LinqServerModeDataSource1" runat="server" ContextTypeName="DataClassesDataContext" TableName="Categories"/>
    </form>
</body>
</html>
