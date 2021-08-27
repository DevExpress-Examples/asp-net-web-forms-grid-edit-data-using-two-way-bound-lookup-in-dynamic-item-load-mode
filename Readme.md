<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128543458/15.1.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3653)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to use ASPxGridLookup two-way bound to LinqServerModeDataSource in GridViewDataComboBoxColum 
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3653/)**
<!-- run online end -->


<p>This example demonstrates how to utilize the <strong>GridViewDataComboBoxColumn</strong> that retrieves "<strong>lookup</strong>" values via the <a href="http://documentation.devexpress.com/#AspNet/CustomDocument8196"><u>Dynamic List Population</u></a> mode (in a browse ASPxGridView mode).</p><p>The <strong>ASPxGridLookup</strong>, which is defined within the <strong>column's EditItemTemplate</strong>, is used as the column's editor and bound with a separate <strong>LinqServerModeDataSource</strong> control via the<strong> two-way binding</strong> option. This approach is useful when ASPxGridLookup should be bound to a <strong>large data source</strong>.</p><p>To use the <strong>default ASPxComboBox editor</strong> (produced by the GridViewDataComboBoxColumn PropertiesComboBox), which operates in a "Dynamic List Population" mode, simply <strong>remove the column's EditItemTemplate</strong> (with the ASPxGridLookup control) definition.</p><p><strong>See also:</strong><br />
<a href="http://documentation.devexpress.com/#AspNet/CustomDocument3726"><u>Server Mode Overview</u></a></p>

<br/>


