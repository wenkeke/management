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
<td colspan="4" class="mian_b_bg_lm">添加角色</td>
</tr>
<tr>
<td>&nbsp;</td>
<td width="7%" valign="top">角色名称：</td>
<td width="20%">
<input type="text" class="input_01" name="textfield" id="textfield"> </td>
<td width="7%">角色排序ID：</td>
<td width="56%"><input type="text" class="input_01" name="textfield" id="text1"></td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="middle">菜单导航：</td>
<td colspan="3">
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
<tr>
<td valign="top" colspan="3"><input id="Checkbox1" type="checkbox">系统设置</td>
</tr>
<tr>
<td width="3%">&nbsp;</td>
<td colspan="2">
<input id="Checkbox8" type="checkbox">系统参数设置<input id="Checkbox9" type="checkbox">部门管理<input id="Checkbox10" type="checkbox">角色管理<input id="Checkbox11" type="checkbox">权限管理<input id="Checkbox12" type="checkbox">审批文档流程管理
</td>
</tr>
<tr>
<td valign="top" colspan="3"><input id="Checkbox2" type="checkbox">系统公告</td>
</tr>
<tr>
<td width="3%">&nbsp;</td>
<td colspan="2">
<input id="Checkbox3" type="checkbox">公告类别<input id="Checkbox4" type="checkbox">公告查看<input id="Checkbox5" type="checkbox">公告管理<input id="Checkbox6" type="checkbox">公告统计
</td>
</tr>
<tr>
<td valign="top" colspan="3">
<input id="Checkbox13" type="checkbox">人事/行政管理</td>
</tr>
<tr>
<td width="3%">&nbsp;</td>
<td colspan="2">
<input id="Checkbox14" type="checkbox">员工信息管理<input id="Checkbox15" type="checkbox">招聘申请<input id="Checkbox16" type="checkbox">请假申请<input id="Checkbox17" type="checkbox">报销申请<input id="Checkbox18" type="checkbox">用车申请<input id="Checkbox7" type="checkbox">办公用品采购申请<input id="Checkbox19" type="checkbox">公文审批
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="middle">备注：</td>
<td colspan="3"><img src="../images/123.png"></td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="4">
<div align="center"><a href="Role.jsp"><img src="..\images\bnt_03.gif" style="margin-right:10px;" width="80" height="22"></a><a href="Role.jsp"><img src="..\images\bnt_05.gif" alt="" width="80" height="22"></a></div></td>
</tr>
</table>
</div>
</div>
</body>
</html>
<script src="/common.js"></script>