﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http//www.w3.org/1999/xhtml">
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
<div class="mian_b1">
<a href="AddCustom.jsp?id=2" title="添加"><p class="mian_b1_a1"></a>
<a href="#" title="删除"><p class="mian_b1_a2"></a>
<p class="mian_b1_sousuo"><input name="" type="text"></p>
<a href="#" title="搜索"><p class="mian_b1_a3"></a>
<a href="#" title="最后"><p class="mian_b1_a4"></a>
<a href="#" title="下一页"><p class="mian_b1_a5"></a>
<p class="mian_b1_list">1 2 3 4……</p>
<a href="#" title="上一页"><p class="mian_b1_a6"></a>
<a href="#" title="最前"><p class="mian_b1_a7"></a>
</div>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg">
<tr>
<td width="3%" class="mian_b_bg_lm"><input name="" type="checkbox" value="">&nbsp;</td>
<td width="20%" class="mian_b_bg_lm">标题</td>
<td class="mian_b_bg_lm">Url</td>
<td width="18%" class="mian_b_bg_lm">图标</td>
<td width="30%" class="mian_b_bg_lm">备注</td>
<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
</tr>
<tr>
<td><input name="" type="checkbox" value="">&nbsp;</td>
<td>邮件提醒</td>
<td>邮件提醒的url</td>
<td><img src="..\images\icon_05.png"></td>
<td>自定义功能备注</td>
<td width="8%">
<div class="mian_b_icon_04"><a href="AddCustom (1).jsp?id=1">编辑</a></div></td>
<td><div class="mian_b_icon_03"><a href="CustomDetail.jsp">查看</a></div></td>
</tr>
<tr>
<td><input name="" type="checkbox" value="">&nbsp;</td>
<td>地图</td>
<td>地图的url</td>
<td><img src="..\images\icon_07.png"></td>
<td>自定义功能备注</td>
<td width="8%">
<div class="mian_b_icon_04"><a href="AddCustom (1).jsp?id=1">编辑</a></div></td>
<td><div class="mian_b_icon_03"><a href="CustomDetail.jsp">查看</a></div></td>
</tr>
<tr>
<td><input name="" type="checkbox" value="">&nbsp;</td>
<td>下载</td>
<td>下载的url</td>
<td><img src="..\images\icon_18.png"></td>
<td>下载功能备注</td>
<td width="8%">
<div class="mian_b_icon_04"><a href="AddCustom (1).jsp?id=1">编辑</a></div></td>
<td><div class="mian_b_icon_03"><a href="CustomDetail.jsp">查看</a></div></td>
</tr>
<tr>
<td width="3%" class="mian_b_bg_lm"></td>
<td width="20%" class="mian_b_bg_lm">标题</td>
<td class="mian_b_bg_lm">Url</td>
<td width="18%" class="mian_b_bg_lm"><span></span>图标</td>
<td width="30%" class="mian_b_bg_lm">备注</td>
<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
</tr>
</table>
</div>
</div>
</body>
</html>
<script src="/common.js"></script>