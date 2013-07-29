<%@ Page Language="C#" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>PagePerformanceTest   http://www.cnblogs.com/fish-li/</title>
</head>
<body>

<p>This is InlinePage.aspx</p>

<% foreach( BlogInfo b in XmlDb.Blogs ) { %>
	<a href="<%= b.Href %>" target="_blank"><%= b.Title %></a><br />
<% } %>
<hr />

<% foreach( BlogInfo b in XmlDb.Blogs ) { %>
	<a href="<%= b.Href %>" target="_blank"><%= b.Title %></a><br />
<% } %>
<hr />

<% foreach( BlogInfo b in XmlDb.Blogs ) { %>
	<a href="<%= b.Href %>" target="_blank"><%= b.Title %></a><br />
<% } %>
<hr />

<% foreach( BlogInfo b in XmlDb.Blogs ) { %>
	<a href="<%= b.Href %>" target="_blank"><%= b.Title %></a><br />
<% } %>
<hr />

<% foreach( BlogInfo b in XmlDb.Blogs ) { %>
	<a href="<%= b.Href %>" target="_blank"><%= b.Title %></a><br />
<% } %>
<hr />

</body>
</html>
