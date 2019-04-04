<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to use ASPxGridLookup two-way bound to LinqServerModeDataSource in GridViewDataComboBoxColum 


<p>This example demonstrates how to utilize the <strong>GridViewDataComboBoxColumn</strong> that retrieves "<strong>lookup</strong>" values via the <a href="http://documentation.devexpress.com/#AspNet/CustomDocument8196"><u>Dynamic List Population</u></a> mode (in a browse ASPxGridView mode).</p><p>The <strong>ASPxGridLookup</strong>, which is defined within the <strong>column's EditItemTemplate</strong>, is used as the column's editor and bound with a separate <strong>LinqServerModeDataSource</strong> control via the<strong> two-way binding</strong> option. This approach is useful when ASPxGridLookup should be bound to a <strong>large data source</strong>.</p><p>To use the <strong>default ASPxComboBox editor</strong> (produced by the GridViewDataComboBoxColumn PropertiesComboBox), which operates in a "Dynamic List Population" mode, simply <strong>remove the column's EditItemTemplate</strong> (with the ASPxGridLookup control) definition.</p><p><strong>See also:</strong><br />
<a href="http://documentation.devexpress.com/#AspNet/CustomDocument3726"><u>Server Mode Overview</u></a></p>

<br/>


