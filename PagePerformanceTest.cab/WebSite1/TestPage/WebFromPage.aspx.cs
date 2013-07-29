using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TestPage_WebFromPage : System.Web.UI.Page
{
	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);

		repeater1.DataSource = XmlDb.Blogs;
		repeater1.DataBind();
		repeater2.DataSource = XmlDb.Blogs;
		repeater2.DataBind();
		repeater3.DataSource = XmlDb.Blogs;
		repeater3.DataBind();
		repeater4.DataSource = XmlDb.Blogs;
		repeater4.DataBind();
		repeater5.DataSource = XmlDb.Blogs;
		repeater5.DataBind();
	}

	protected void repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
	{
		if( e.Item.ItemType == ListItemType.Item ) {
			BlogInfo blog = e.Item.DataItem as BlogInfo;
			HyperLink link1 = e.Item.FindControl("link1") as HyperLink;
			link1.NavigateUrl = blog.Href;
			link1.Text = blog.Title;
		}
	}
}
