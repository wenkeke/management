<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题页</title>
<link rel="stylesheet" rev="stylesheet" href="../css/index.css"
	type="text/css" media="all" />
<script src="../js/jquery-1.8.3.min.js"></script>
<!-- easyui插件 -->
<link rel="stylesheet" type="text/css"
	href="../ui/jquery-easyui-1.5.2/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css"
		href="../ui/jquery-easyui-1.5.2//themes/icon.css">
		<link rel="stylesheet" type="text/css"
			href="../ui/jquery-easyui-1.5.2/demo/demo.css">
			<script type="text/javascript"
				src="../ui/jquery-easyui-1.5.2/jquery.easyui.min.js"></script>
			<script type="text/javascript">
				$(function() {
					$("#hightsearch").click(function() {
						$("#search").toggle();
					});

					$("#searchclick").click(function() {
						$("#searchform").submit();
					});
/* 
					var v1 = $('#starttime').datebox('getValue'); // 获取日期输入框的值
					var v2 = $('#endtime').datebox('getValue'); // 获取日期输入框的值
					alert(v1 + "," + v2);
 */
					//$('#endtime).datebox('setValue', '6/1/2012');    设置日期输入框的值
					$('#starttime').datebox(
							{
								onSelect : function(date) {
									var v = date.getFullYear() + "-"
											+ (date.getMonth() + 1) + "-"
											+ date.getDate();
											$("#searchstarttime").val(v);
								}
							});

					$('#endtime').datebox(
							{
								onSelect : function(date) {
									var v = date.getFullYear() + "-"
											+ (date.getMonth() + 1) + "-"
											+ date.getDate();
									$("#searchendtime").val(v);
								}
							});

				});
			</script>
</head>
<body class="mian_bj">

	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a href="../findAllEmp.do">
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
			<div class="mian_b1">
				<a href="../forAddEmp.do" title="添加">
					<p class="mian_b1_a1"></p> </a><a href="#" title="删除">
					<p class="mian_b1_a2"></p> </a>
				<p class="mian_b1_sousuo">
					<input name="" type="text">
				</p>
				<a href="#" title="搜索">
					<p class="mian_b1_a3"></p> </a>
				<p class="mian_b1_a9">
					<a href="javascript:void(0)" id="hightsearch">高级搜索>></a>
				</p>
					<!--搜索表单开始  -->
					<form action="../findAllEmp.do" method="post" id="searchform">
				<a href="javascript:gopage(${emp.totalPage })" title="最后">总数为：${emp.totalNumber
					}总页数为：${emp.totalPage }
					<p class="mian_b1_a4"></p> </a><a href="javascript:gopage(${emp.currentPage+1 })" title="下一页">
					<p class="mian_b1_a5"></p> </a>
				<p class="mian_b1_list">
					<c:forEach  begin="1"  end="${emp.totalPage }" step="1" var="p">
						<a href="../findAllEmp.do?currentPage=${p }">${p }</a>&nbsp;
				</c:forEach></p>
					<a href="javascript:gopage(${emp.currentPage-1 })" title="上一页">
						<p class="mian_b1_a6"></p> </a><a href="javascript:gopage(1)" title="最前">
						<p class="mian_b1_a7"></p> </a>
			</div>

			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg">
				<tr id="search" style="display: none;">
						<td colspan="8"
							style="height: 35px; background-color: #DBDBDB;margin-left:20px">
							<select name="searchsex">
								<option value="">
									性别
									<option value="男">
										男
										<option value="女">女
						</select>&nbsp;<select name="searchdno"><option value="0">
									所属部门
									<option value="1">
										软装部
										<option value="2">人事部
						</select>&nbsp;<select name=""><option value="-1">
									状态
									<option value="0">
										在职
										<option value="1">离职
						</select>&nbsp;</bt><input name="searchfull" type="text" value="工号、姓名、职位、手机"
							class="input_03">&nbsp; <br /> <input
								class="easyui-datebox"  id="starttime"
								data-options="label:'开始时间:',labelPosition:'top',onSelect:onSelect"
								style="width:200px;height: 50px" /><input
							class="easyui-datebox" id="endtime"
							data-options="label:'结束时间:',labelPosition:'top',onSelect:onSelect"
							style="width:200px;height: 50px" /> <script>
								function onSelect(date) {
									/* //var v = $(this).text(date)
									var v = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();		
									alert("123");
									document.getElementById("endtime").value(v); */
								}
							</script>
							<input type="hidden" name="searchstarttime" id="searchstarttime"/>
							<input type="hidden"  name="searchendtime" id="searchendtime"/>
					<td colspan="3" style="height: 35px; background-color: #DBDBDB;"><a
						href="javascript:void(0)" title="高级搜索" id="searchclick">
							<p class="mian_b1_a8" onclick="click('search');"></p> </a></td>
					</form>
				</tr>
				<tr>
					<td width="3%" class="mian_b_bg_lm"><input name=""
						type="checkbox" value="">&nbsp; 
					</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>工号</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>员工姓名</td>
					<td width="5%" class="mian_b_bg_lm"><span></span>性别</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>员工职位</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>手机</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>所属部门</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>入职时间</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>状态</td>
					<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
				</tr>
				<c:forEach items="${sessionEmpList }" var="emp" varStatus="statu">
					<tr
						<c:if test="${statu.index%2==1 }">style="border-bottom-color: gray;"</c:if>>
						<td><input name="" type="checkbox" value="">&nbsp; 
						</td>
						<td>${emp.empno }</td>
						<td>${emp.ename }</td>
						<td>${emp.gender }</td>
						<td>${emp.pname }</td>
						<td>${emp.telephone }</td>
						<td>${emp.dname }</td>
						<td><fmt:formatDate value="${emp.entrydate }"
								pattern="yyyy-MM-dd" />
						</td>
						<td><c:if test="${emp.state ==0 }">在职</c:if> <c:if
								test="${emp.state ==1 }">离职</c:if>
						</td>
						<td width="5%" class="mian_b_icon_01"><a
							href="AddEmploylee.jsp">编辑</a></td>
						<td width="5%" class="mian_b_icon_02"><a
							href="EmployeeDetail.jsp">查看</a></td>
					</tr>
				</c:forEach>

			</table>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>