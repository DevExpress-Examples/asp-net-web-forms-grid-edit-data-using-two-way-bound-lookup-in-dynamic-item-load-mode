using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) {
    }

    public void ItemRequestedByValue(object source, DevExpress.Web.ListEditItemRequestedByValueEventArgs e){
        int value = 0;
        if(e.Value == null || !Int32.TryParse(e.Value.ToString(), out value))
            return;

        ASPxComboBox comboBox = (ASPxComboBox)source;

        DataClassesDataContext dataContext = new DataClassesDataContext();

        int id = Int32.Parse(e.Value.ToString());
        var query = from category in dataContext.Categories
                    where category.CategoryID == id
                    select category;

        var count = query.Count();

        comboBox.DataSource = query;
        comboBox.DataBind();
    }

    public void ItemsRequestedByFilterCondition(object source, DevExpress.Web.ListEditItemsRequestedByFilterConditionEventArgs e){
        ASPxComboBox comboBox = (ASPxComboBox)source;

        var skip = e.BeginIndex;
        var take = e.EndIndex - e.BeginIndex + 1;

        DataClassesDataContext dataContext = new DataClassesDataContext();
        var queryStartWidth =
            (from category in dataContext.Categories
             where category.CategoryName.StartsWith(e.Filter)
             orderby category.CategoryName
             select category).Skip(skip).Take(take);

        comboBox.DataSource = queryStartWidth;
        comboBox.DataBind();
    }
}