﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
</head>
<body class="mian_bj">
<div class="mian_top_01">
<div class="mian_top_r"></div>
<div class="mian_top_l"></div>
<div class="mian_top_c">
<ul>
<li><a href="Branch.jsp"><p>部门管理</p></a></li>
<li><a href="EaDoc.jsp"><p>审批文档流程管理</p></a></li>
<li><a href="Role.jsp"><p>角色管理</p></a></li>
<li><a href="Power.jsp"><p>权限管理</p></a></li>
<li><a href="XTCS.jsp"><p>系统参数设置</p></a></li>
<li><a href="NormalManage.jsp"><p>常规功能管理</p></a></li>
<li><a href="CustomManage.jsp"><p>自定义功能管理</p></a></li>
</ul>
</div>
<div class="mian_b">
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
<tr>
<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
<td colspan="3" class="mian_b_bg_lm">角色分配</td>
</tr>
<tr>
<td>&nbsp;</td>
<td width="8%" valign="top">分配人员：</td>
<td width="55%">
<input type="text" class="input_01" name="textfield" id="textfield"> </td>
<td width="37%">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="middle">角色：</td>
<td>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" colspan="2"><input id="Checkbox1" type="checkbox">全选</td>
</tr>
<tr>
<td style="width:2%"></td>
<td>
<input id="Checkbox2" type="checkbox">超级管理员<input id="Checkbox3" type="checkbox">管理员<input id="Checkbox4" type="checkbox">总经理<input id="Checkbox5" type="checkbox">财务部<input id="Checkbox6" type="checkbox">商务部
</td>
</tr>
</table>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>
<div align="center"><a href="Power.jsp"><img src="..\images\bnt_03.gif" style="margin-right:10px;" width="80" height="22"></a><a href="Power.jsp"><img src="..\images\bnt_05.gif" alt="" width="80" height="22"></a></div></td>
<td>&nbsp;</td>
</tr>
</table>
</div>
</div>
</body>
</html>
<script src="/common.js"></script>