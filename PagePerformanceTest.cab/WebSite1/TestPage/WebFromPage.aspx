<%@ Page Language="C#" CodeFile="WebFromPage.aspx.cs" Inherits="TestPage_WebFromPage" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>PagePerformanceTest   http://www.cnblogs.com/fish-li/</title>
</head>
<body>

<p>This is WebFromPage.aspx</p>

<asp:Repeater ID="repeater1" runat="server" onitemdatabound="repeater1_ItemDataBound">
<ItemTemplate>
	<asp:HyperLink ID="link1" runat="server"></asp:HyperLink><br />
</ItemTemplate>
<FooterTemplate><hr /></FooterTemplate>
</asp:Repeater>

<asp:Repeater ID="repeater2" runat="server" onitemdatabound="repeater1_ItemDataBound">
<ItemTemplate>
	<asp:HyperLink ID="link1" runat="server"></asp:HyperLink><br />
</ItemTemplate>
<FooterTemplate><hr /></FooterTemplate>
</asp:Repeater>

<asp:Repeater ID="repeater3" runat="server" onitemdatabound="repeater1_ItemDataBound">
<ItemTemplate>
	<asp:HyperLink ID="link1" runat="server"></asp:HyperLink><br />
</ItemTemplate>
<FooterTemplate><hr /></FooterTemplate>
</asp:Repeater>

<asp:Repeater ID="repeater4" runat="server" onitemdatabound="repeater1_ItemDataBound">
<ItemTemplate>
	<asp:HyperLink ID="link1" runat="server"></asp:HyperLink><br />
</ItemTemplate>
<FooterTemplate><hr /></FooterTemplate>
</asp:Repeater>

<asp:Repeater ID="repeater5" runat="server" onitemdatabound="repeater1_ItemDataBound">
<ItemTemplate>
	<asp:HyperLink ID="link1" runat="server"></asp:HyperLink><br />
</ItemTemplate>
<FooterTemplate><hr /></FooterTemplate>
</asp:Repeater>


</body>
</html>
