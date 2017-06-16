<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css" />
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script>
	/* 加载函数 */
	$(function() {
		$("#submit").click(function() {
			$("#addtaskform").submit();
		});
		/* 部门与员工的级联 */
		$(function() {
			/* 级联 */
			$("#dept").change(function() {
				$("#emp  option").remove();//清空下一级的值
				var did = $(this).val();
				getemp(did); //这样轻松支持多级 级联	
			});
		});

		//加载人员
		function getemp(did) {
			$.ajax({
				url : "../find",
				type : "post",
				data : {
					"house.districtId" : did
				},
				dataType : "json",
				cache : false,
				success : function(street) {
					/* for (var i = 0; i < street.length; i++) {
						var string = "<option value='" + street[i].id + "'>" + street[i].name + "</option>";
						$("#street").append(string);
					}	 */
					//注意!!!这里使用eval(res)函数，否则获取到的json数据无法遍历,无话获取到数据
					var arr = eval(street);
					//遍历返回的json数据加载到select标签;
					$.each(arr, function(key, val) {
						// $("#" + selectid).append(
						$("#street").append(
								" <option id='" + val.id + "'>" + val.name
										+ "</option>");
					});
				}
			});
		}
	});
</script>
</head>
<body class="mian_bj">
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a href="Schedule.jsp"><p>日程查看</p> </a></li>
				<li><a href="TaskAllot.jsp"><p>任务创建</p> </a></li>
				<li><a href="TaskShow.jsp"><p>任务接受查看</p> </a></li>
				<li><a href="IssuedTask.jsp"><p>任务下发查看</p> </a></li>
				<li><a href="DelayTaskApply.jsp"><p>任务延期申请</p> </a></li>
				<li><a href="DelayTask.jsp"><p>任务延期审批</p> </a></li>
				<li><a href="MoveTaskApply.jsp"><p>任务转移</p> </a></li>
				<li><a href="MoveTask.jsp"><p>任务转移审核</p> </a></li>
				<li><a href="TaskResult.jsp"><p>任务成果提交</p> </a></li>
			</ul>
		</div>
		<div class="mian_b">
			<form action="../addTask.do" method="post" id="addtaskform">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="mian_b_bg_xz">
					<tr>
						<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
						<td colspan="3" class="mian_b_bg_lm">添加任务</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td width="10%" valign="top">任务标题：</td>
						<td width="60%"><input type="text" class="input_01"
							name="ttitle" id="textfield">
						</td>
						<td width="25%">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td valign="top">完成时间：</td>
						<td><input type="text" class="input_01" name="textfield"
							id="textfield">——<input type="text" class="input_01"
								name="stringbegindate" id="text1">
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td valign="top">执行人员：</td>
						<td><select id ="dept">
								<option value="0">请选择部门</option>
								<c:forEach  items="${deptList }" var="d">
									<option value="${d.dno }">${d.dname }</option>
								</c:forEach>
								<!-- <option>
									人事部
									<option>
										商务部
										<option>
											软装部
											<option>硬装部 -->
						</select> &nbsp;&nbsp;<select name="empno1" id="emp">
								<option value="0">请选择执行人</option>
								<!-- <option value="">
									吴菲菲
									<option>
										张小雨
										<option>
											王某某
											<option>李想 -->
						</select>
						</td>
						<td>&nbsp;</td>
					</tr>
					<!-- 	<tr>
					<td>&nbsp;</td>
					<td valign="top">紧急程度：</td>
					<td><input id="Radio1" type="radio" name="level">普通&nbsp;&nbsp;<input
							id="Radio2" type="radio" name="level">紧急&nbsp;&nbsp;<input
								id="Radio3" type="radio" name="level">非常紧急 
					</td>
					<td>&nbsp;</td>
				</tr> -->
					<tr>
						<td>&nbsp;</td>
						<td valign="top">任务内容：</td>
						<td><textarea rows="6" cols="50" name="tcontext"></textarea>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td valign="top">附件：</td>
						<td>继续添加附件.....</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td valign="top"></td>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0"
								class="mian_b_bg_xz">
								<tr>
									<td width="30%">
										<!-- 文件域 -->
										<input id="File1" type="file" name="name">
									</td>
									<td><img src="..\images\bnt_07.gif">
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
							<div align="center">
								<a href="javascript:void(0)" id="submit"><img
									src="..\images\bnt_03.gif" style="margin-right:10px;"
									width="80" height="22">
								</a><img src="..\images\bnt_05.gif" alt="" width="80" height="22">
							</div></td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>