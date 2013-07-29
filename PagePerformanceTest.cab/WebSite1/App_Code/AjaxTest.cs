using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyMVC;
using System.Diagnostics;


// 说明：测试代码使用了MyMVC框架，
// MyMVC框架的下载地址：http://www.cnblogs.com/fish-li/archive/2012/02/21/2361982.html

// 如果您希望知道ASPX页面以及ASCX控件编译后是个什么样子的，
// 可以从这里下载一个工具包： http://www.cnblogs.com/fish-li/archive/2011/10/30/2229497.html
// 然后运行 FishAspnetTool 即可。


public class AjaxTest
{
	[Action]
	public object Test1(string callTimes)
	{
		int count = 0;
		int.TryParse(callTimes, out count);
		if( count <= 0 )
			return count;

		HttpContext context = HttpContext.Current;
		
		// 先执行一次，排除编译时间
		string html = MyMVC.PageExecutor.Render(context, "/TestPage/WebFromPage.aspx", null);

		Stopwatch watch = Stopwatch.StartNew();
		for( int i = 0; i < count; i++ )
			html = MyMVC.PageExecutor.Render(context, "/TestPage/WebFromPage.aspx", null);
		watch.Stop();

		return watch.Elapsed.ToString();
	}


	[Action]
	public object Test2(string callTimes)
	{
		int count = 0;
		int.TryParse(callTimes, out count);
		if( count <= 0 )
			return count;

		HttpContext context = HttpContext.Current;

		// 先执行一次，排除编译时间
		string html = MyMVC.PageExecutor.Render(context, "/TestPage/InlinePage.aspx", null);

		Stopwatch watch = Stopwatch.StartNew();
		for( int i = 0; i < count; i++ )
			html = MyMVC.PageExecutor.Render(context, "/TestPage/InlinePage.aspx", null);
		watch.Stop();

		return watch.Elapsed.ToString();
	}



	[Action]
	public object Test3(string callTimes)
	{
		int count = 0;
		int.TryParse(callTimes, out count);
		if( count <= 0 )
			return count;

		// 先执行一次，排除编译时间
		string html = MyMVC.UcExecutor.Render("/UserControl/InlineUserControl.ascx", null);
		
		Stopwatch watch = Stopwatch.StartNew();
		for( int i = 0; i < count; i++ )
			html = MyMVC.UcExecutor.Render("/UserControl/InlineUserControl.ascx", null);
		watch.Stop();

		return watch.Elapsed.ToString();
	}


}
