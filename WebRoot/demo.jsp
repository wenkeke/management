<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Bootstrap 模板</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<script src="js/jquery-1.8.3.min.js"></script>
<!-- <link href="ui/bootstrap-3.3.7/css/bootstrap.css" rel="stylesheet">
可选的Bootstrap主题文件（一般不使用）
<script src="ui/bootstrap-3.3.7/css/bootstrap-theme.css"></script>
jQuery文件。务必在bootstrap.min.js 之前引入
最新的 Bootstrap 核心 JavaScript 文件
<script src="ui/bootstrap-3.3.7/js/bootstrap.js"></script>
 -->
<!-- easyui插件 -->
<link rel="stylesheet" type="text/css"
	href="ui/jquery-easyui-1.5.2/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="ui/jquery-easyui-1.5.2//themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="ui/jquery-easyui-1.5.2/demo/demo.css">
<script type="text/javascript"
	src="ui/jquery-easyui-1.5.2/jquery.easyui.min.js"></script>

</head>
<body>
	<input class="easyui-datebox" id="endtime"
		data-options="label:'结束时间:',labelPosition:'top',onSelect:onSelect"
		style="width:500px;height: 50px" />
	<script>
		function onSelect(date) {
			/* //var v = $(this).text(date)
			var v = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();		
			alert("123");
			document.getElementById("endtime").value(v); */
		}
	</script>




</body>
</html>
