<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>PagePerformanceTest   http://www.cnblogs.com/fish-li/</title>
    <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script>
</head>
<body>

<table cellpadding="5" border="0" style="width: 100%">
<tr><td style="vertical-align: top">
	<fieldset>
	<legend>测试 WebFromPage.aspx</legend>
		<form id="form1" action="/AjaxTest/Test1.cspx" method="post">
			<span>调用次数：</span><input type="text" name="callTimes" value="10000" />
			<input type="submit" name="submit1" value="执行测试" />
			<hr />
			<p id="testResult1"></p>
		</form>
	</fieldset>
	
</td><td style="vertical-align: top">
	<fieldset>
	<legend>测试 InlinePage.aspx</legend>
		<form id="form2" action="/AjaxTest/Test2.cspx" method="post">
			<span>调用次数：</span><input type="text" name="callTimes" value="10000" />
			<input type="submit" name="submit1" value="执行测试" />
			<hr />
			<p id="testResult2"></p>
		</form>
	</fieldset>

</td></tr>
<tr><td style="vertical-align: top">
	<fieldset>
	<legend>测试 InlineUserControl.ascx</legend>
		<form id="form3" action="/AjaxTest/Test3.cspx" method="post">
			<span>调用次数：</span><input type="text" name="callTimes" value="10000" />
			<input type="submit" name="submit1" value="执行测试" />
			<hr />
			<p id="testResult3"></p>
		</form>
	</fieldset>
	
</td><td style="vertical-align: top">

</td></tr>
</table>


	
<script type="text/javascript">
	$(function() {
		$("form").ajaxForm({
			beforeSend: function(xhr) {
				$("submit").hide();
				SetResult(this.url, "<b>正在测试中，请稍后.....</b>");
			},
			complete: function(xhr) {
				$("submit").show();
			},
			success: function(result) {
				SetResult(this.url, result);
			}
		});

		function SetResult(url, message) {
			if (url.indexOf("/Test1.cspx") > 0)
				$("#testResult1").html(message);
			else if (url.indexOf("/Test2.cspx") > 0)
				$("#testResult2").html(message);
			else if (url.indexOf("/Test3.cspx") > 0)
				$("#testResult3").html(message);

		}
	});
</script>

</body>
</html>
