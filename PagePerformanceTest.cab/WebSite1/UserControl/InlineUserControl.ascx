<%@ Control Language="C#" ClassName="UserControl_InlineUserControl" %>

<p>This is InlineUserControl.ascx</p>

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
