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
				<li><a href="Employlee.jsp">
						<p>人员信息</p> </a>
				</li>
				<li><a href="RSEventApply.jsp">
						<p>招聘申请</p> </a>
				</li>
				<li><a href="RSEventApply.jsp">
						<p>职位调整申请</p> </a>
				</li>
				<li><a href="RSEventApply.jsp">
						<p>离职申请</p> </a>
				</li>
				<li><a href="RSEventApply.jsp">
						<p>培训申请</p> </a>
				</li>
				<li><a href="ExaAppdocument.jsp">
						<p>公文审批</p> </a>
				</li>
			</ul>
		</div>
		<div class="mian_b">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">添加普通申请</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">标题：</td>
					<td width="55%"><input type="text" class="input_01"
						name="textfield" id="textfield">
					</td>
					<td width="35%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">内容：</td>
					<td><img src="..\images\leaveapply.png">
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">附件：</td>
					<td><input id="File1" type="file">
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<div align="center">
							<img src="..\images\bnt_03.gif" style="margin-right:10px;"
								width="80" height="22" onclick="javascript:history.go(-1);"><img
								src="..\images\bnt_05.gif" alt="" width="80" height="22"
								onclick="javascript:history.go(-1);">
						</div>
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>