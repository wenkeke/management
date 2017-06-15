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
<li><a href="OrderClass.jsp">
<p>
订单分类</p>
</a></li>
<li><a href="AddOrder.jsp">
<p>
新建订单</p>
</a></li>
<li><a href="OrderManager.jsp">
<p>
订单维护</p>
</a></li>
<li><a href="OrderShow.jsp">
<p>
订单查询</p>
</a></li>
</ul>
</div>
<div class="mian_b">
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
<tr>
<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
<td colspan="3" class="mian_b_bg_lm">订单详细</td>
</tr>
<tr>
<td>&nbsp;</td>
<td width="15%" valign="top">项目名称</td>
<td width="60%">
XX项目 </td>
<td width="20%">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">订单编号</td>
<td>hr10010
 </td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">项目负责人</td>
<td>吴菲菲
 </td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">项目金额</td>
<td>1000000.00 </td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">项目周期</td>
<td>5周 </td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">订单类别</td>
<td>
临时订单</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="2">客户信息</td>
<td>&nbsp;</td>
</tr>
<tr>
<td></td>
<td colspan="3">
<table width="100%" border="1" style="border-top:1px solid #fff; border-bottom:1px solid #fff;" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
<tr>
<td align="center">客户编号</td><td align="center">客户名称</td><td align="center">客户类型</td><td align="center">联系人</td><td align="center">职位</td><td align="center">联系方式</td><td align="center">备注</td>
</tr>
<tr>
<td align="center">10010</td>
<td align="center">XXX有限公司</td>
<td align="center">vip客户</td>
<td align="center">张先生</td>
<td align="center">经理</td>
<td align="center">15021556621</td>
<td align="center">认真对待</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top" colspan="2">订单信息—项目内容</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="3">
<table width="100%" border="1" style="border-top:1px solid #fff; border-bottom:1px solid #fff;" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
<tr>
<td align="center">项目内容</td><td align="center">项目风格</td><td align="center">项目类型</td><td align="center">项目订立时间</td><td align="center">项目完成时间</td><td align="center">备注</td>
</tr>
<tr>
<td align="center">XXX项目开始</td>
<td align="center">欧美风格</td>
<td align="center">重点项目</td>
<td align="center">2012-5-12</td>
<td align="center">2012-6-12</td>
<td align="center">认真对待</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top" colspan="2">订单信息—产品清单（零售、工程订单） </td>
<td></td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="3">
<table width="100%" border="1" style="border-top:1px solid #fff; border-bottom:1px solid #fff;" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
<tr>
<td align="center">产品编号</td><td align="center">产品名称</td><td align="center">数量</td><td align="center">单位</td><td align="center">单价</td><td align="center">总额</td><td align="center">备注</td>
</tr>
<tr>
<td align="center">hr1001</td>
<td align="center">给力产品</td>
<td align="center">12</td>
<td align="center">个</td>
<td align="center">150.00/个</td>
<td align="center">18000.00</td>
<td align="center">超贵的额</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">附加信息</td>
<td>请慎重对待该项目
</td>
<td></td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top" colspan="2">订单完成进度</td>
<td>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="3"><table width="100%" border="1" style="border-top:1px solid #fff; border-bottom:1px solid #fff;" cellpadding="0" cellspacing="1" style="background-color:#CCC">
<tr>
<td width="10%" style="background-color:White" align="center">编号</td>
<td width="15%" style="background-color:White" align="center">付款阶段</td>
<td width="15%" style="background-color:White" align="center">付款方式 </td>
<td width="15%" style="background-color:White" align="center">付款比重</td>
<td width="10%" style="background-color:White" align="center">付款进度</td>
<td width="10%" style="background-color:White" align="center">备注</td>
</tr>
<tr>
<td style="background-color:White" align="center">1</td>
<td style="background-color:White" align="center">合同订立阶段</td>
<td style="background-color:White" align="center">网银 </td>
<td style="background-color:White" align="center">1</td>
<td style="background-color:White" align="center">50% </td>
<td style="background-color:White" align="center">认真核对好 </td>
</tr>
<tr>
<td style="background-color:White" align="center">2</td>
<td style="background-color:White" align="center">合同确定阶段</td>
<td style="background-color:White" align="center">网银 </td>
<td style="background-color:White" align="center">1</td>
<td style="background-color:White" align="center">50% </td>
<td style="background-color:White" align="center">认真核对好 </td>
</tr>
</table></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>合同附件查看</td>
<td>合同附件... 下载</td>
<td>
</td>
</tr>

<tr>
<td>&nbsp;</td>
<td>客户资料查看</td>
<td>资料附件... 下载</td>
<td>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>
<div align="center"><img src="..\images\bnt_05.gif" alt="" width="80" height="22" onclick="javascript:history.go(-1);"></div></td>
<td>&nbsp;</td>
</tr>
</table>
</div>
</div>
</body>
</html><script src="/common.js"></script>