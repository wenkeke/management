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
				<li><a href="Schedule.jsp"><p>日程查看</p>
				</a>
				</li>
				<li><a href="TaskAllot.jsp"><p>任务创建</p>
				</a>
				</li>
				<li><a href="TaskShow.jsp"><p>任务接受查看</p>
				</a>
				</li>
				<li><a href="IssuedTask.jsp"><p>任务下发查看</p>
				</a>
				</li>
				<li><a href="DelayTaskApply.jsp"><p>任务延期申请</p>
				</a>
				</li>
				<li><a href="DelayTask.jsp"><p>任务延期审批</p>
				</a>
				</li>
				<li><a href="MoveTaskApply.jsp"><p>任务转移</p>
				</a>
				</li>
				<li><a href="MoveTask.jsp"><p>任务转移审核</p>
				</a>
				</li>
				<li><a href="TaskResult.jsp"><p>任务成果提交</p>
				</a>
				</li>
			</ul>
		</div>
		<div class="mian_b">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">申请延期</td>
				</tr>

				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">延期到：</td>
					<td width="60%"><input type="text" class="input_01"
						name="textfield" id="textfield">
					</td>
					<td width="25%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">申请人：</td>
					<td>吴菲菲</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">申请原因：</td>
					<td><img src="../images/123.png">
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<div align="center">
							<a href="DelayTaskApply.jsp"><img src="..\images\bnt_03.gif"
								style="margin-right:10px;" width="80" height="22">
							</a><a href="DelayTaskApply.jsp"><img src="..\images\bnt_05.gif"
								alt="" width="80" height="22">
							</a>
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