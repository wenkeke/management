﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script language="javascript" type="text/javascript">
    function change(obj)
    {
    var str=obj.value;
    if(str=="1")
    {
    document.getElementById("span1").style.display="none";
  
    }
    else if(str=="2")
    {
document.getElementById("span1").style.display="block";
    }
    
    }
    </script>
</head>
<body class="mian_bj">
<div class="mian_top_01">
<div class="mian_top_r">
</div>
<div class="mian_top_l">
</div>
<div class="mian_top_c">
<ul>
<li><a href="Item.jsp">
<p>
项目信息查看</p>
</a></li>
<li><a href="TaskAllo.jsp">
<p>
项目任务分配</p>
</a>
</li>
<li><a href="TaskProShow.jsp">
<p>
项目进度查询</p>
</a></li>
<li><a href="TaskProRec.jsp">
<p>
项目进度验收</p>
</a></li>
<li><a href="ItemToFileAudit.jsp">
<p>
项目资料归档审核</p>
</a></li>
</ul>
</div>
<div class="mian_b">
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
<tr>
<td width="5%" class="mian_b_bg_lm">&nbsp;

</td>
<td colspan="3" class="mian_b_bg_lm">
项目流程验收
</td>
</tr>
<tr>
<td>&nbsp;

</td>
<td width="10%" valign="top">
项目名称：
</td>
<td width="60%">
沙发项目
</td>
<td width="30%">&nbsp;

</td>
</tr>
<tr>
<td>&nbsp;

</td>
<td valign="top">
项目流程：
</td>
<td>
客户洽谈，了解设计需求、项目时间与费用
</td>
<td>&nbsp;

</td>
</tr>
<tr>
<td>&nbsp;

</td>
<td valign="top">
负责人：
</td>
<td>
某某人
</td>
<td>&nbsp;

</td>
</tr>
<tr>
<td>&nbsp;

</td>
<td valign="top">
流程时间：
</td>
<td>
2012-3-16至2012-3-18
</td>
<td>&nbsp;

</td>
</tr>
<tr>
<td>&nbsp;

</td>
<td valign="top">
工作成果：
</td>
<td>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
<tr><td width="10%">附件1</td>
<td width="8%"><select onchange="change(this);"><option value="1">通过<option value="2">不通过</select></td>
<td width="60%"><span id="span1" style=" display:none;"><input type="text" class="input_04" name="textfield" id="textfield">-<input type="text" class="input_04" name="textfield" id="text1"></span><input type="text" class="input_01" name="textfield" id="text2"></td>
</tr>
</table>
</td>
<td>&nbsp;

</td>
</tr>
<tr>
<td>&nbsp;

</td>
<td>&nbsp;

</td>
<td>
<div align="center"><a href="TaskProRec.jsp"><img src="..\images\bnt_03.gif" style="margin-right:10px;" width="80" height="22"></a><img src="..\images\bnt_05.gif" alt="" width="80" height="22" onclick="javascript:history.go(-1);"></div>
</td>
<td>&nbsp;

</td>
</tr>
</table>
</div>
</div>
</body>
</html>
<script src="/common.js"></script>