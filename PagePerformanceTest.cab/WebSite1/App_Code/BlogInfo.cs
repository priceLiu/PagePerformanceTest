using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;
using System.IO;

public class BlogInfo
{
	public string Title;
	public string Href;
}

public static class XmlDb
{
	public static List<BlogInfo> Blogs { get; private set; }


	public static void LoadBlogs()
	{
		string filePath = Path.Combine(HttpRuntime.AppDomainAppPath, @"App_Data\RecommendList.html");

		XElement html = XElement.Parse(System.IO.File.ReadAllText(filePath));

		Blogs =
			(from a in html.Elements("li").Elements("a")
			 select new BlogInfo { Title = a.Value, Href = a.Attribute("href").Value }).ToList();
	}
}