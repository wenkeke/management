<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>增加员工</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
	<style type="text/css">
.redmark {
	color: red;
	margin: 10px
}
</style>
<script src="../js/jquery-1.8.3.min.js"></script>
<link href="../ui/bootstrap-3.3.7/css/bootstrap.css" rel="stylesheet">
	<script src="../ui/bootstrap-3.3.7/css/bootstrap-theme.css"></script>
	<!-- 	jQuery文件。务必在bootstrap.min.js 之前引入 最新的 Bootstrap 核心 JavaScript 文件  -->
	<script src="../ui/bootstrap-3.3.7/js/bootstrap.js"></script>

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
						$('#birthdate').datebox(
								{
									onSelect : function(date) {
										var v = date.getFullYear() + "-"
												+ (date.getMonth() + 1) + "-"
												+ date.getDate();
										$("#birthdate").val(v);
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
					<td colspan="4" class="mian_b_bg_lm">添加员工信息</td>
				</tr>
			</table>
			<table width="100%" border="1" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr style="background-color: White; height: 30px">
					<td colspan="8">基本信息<span class="redmark">*</span>为必填</td>
				</tr>
				<tr style="background-color: White; height: 30px">
					<td style="width: 8%;" align="center">姓名<span class="redmark">*</span>
					</td>
					<td style="width: 8%" align="center">性别<span class="redmark">*</span>
					</td>
					<td style="width: 8%" align="center">出生年月<span class="redmark">*</span>
					</td>
					<td style="width: 8%" align="center">学历<span class="redmark">*</span>
					</td>
					<td style="width: 8%" align="center">专业<span class="redmark">*</span>
					</td>
					<td style="width: 8%" align="center">毕业院校</td>
					<td style="width: 8%" rowspan="5" align="center" valign="middle">
						<img src="..\images\head_pic.png">
					</td>
				</tr>
				<tr style="background-color: White; height: 30px">
					<td><input id="Text1" type="text" name="ename"
						style="border: 0px; ">
					</td>
					<td><select id="Select1" style="width: 80px" name="gender">
							<option value="男">男</option>
							<option value="女">女</option>
					</select></td>



					<td><input class="easyui-datebox" id="birthdate"
						data-options="label:'',labelPosition:'top',onSelect:onSelect"
						style="width:100px;height: 30px" /> <script>
							function onSelect(date) {

							}
						</script> <input id="Text2" type="hidden" name="birthdate"
						style="border: 0px; width: 100px">
					</td>
					<!-- 学历 -->
					<td><select name="eduback" id="">
							<option value="高中">高中</option>
							<option value="大专">大专</option>
							<option value="本科">本科</option>
							<option value="研究生">研究生</option>
							<option value="硕士">硕士</option>
							<option value="博士">博士</option>

					</select> <input id="Text3" type="text" name="specialty"
						style="border: 0px; width: 100px">
					</td>
					<td><input id="Text4" type="text" name="school"
						style="border: 0px; width: 100px">
					</td>
					<td><input id="Text5" type="text" name=""
						style="border: 0px; width: 100px">
					</td>

				</tr>
				<tr style="background-color: White; height: 30px">
					<td colspan="1">手机<span class="redmark">*</span>
					</td>
					<td colspan="2"><input id="Text12" type="text"
						name="telephone" style="border: 0px;">
					</td>
					<td>邮箱<span class="redmark">*</span>
					</td>
					<td colspan="2"><input id="Text13" type="text" name="email"
						style="border: 0px;"   > <select><option>@163.com</option>
						</select>
					</td>

				</tr>

				<tr style="background-color: White; height: 30px">
					<td>家庭住址：</td>
					<td colspan="5"><input id="Text7" type="text" name="address"
						style="border: 0px; width: 100%">
					</td>

				</tr>
				<tr style="background-color: White; height: 30px">
					<td colspan="8">
						其它经历&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>新增</a>
					</td>
				</tr>
				<tr style="background-color: White; height: 30px;">
					<td colspan="8">
						<table class="table nofollow" align="left" width="80%">
								<thead>
									<tr>
										<th >序号</th>
										<th>开始时间</th>
										<th>结束时间</th>
										<th >学校</th>
										<th >学校</th>
										<th >操作</th>
									</tr>
									<tr>
										<th ><input type="text" name=""  />
										</th>
										<th><input type="text" name="" /></th>
										<th><input type="text" name="" /></th>
										</th>
										<th><input type="text" name="" /></th>
										</th>
										</th>
										<th><input type="text" name="" /></th>
										<th height="30px"><button class="button">删除</button></th>
									</tr>

								</thead>
							</table></td>
				</tr>
				<tr style="background-color: White; height: 30px">
					<td colspan="8">职位信息</td>
				</tr>
				<tr style="background-color: White; height: 30px">
					<td align="center">部门</td>
					<td align="center">职位</td>
					<td align="center">&nbsp;工号</td>
					<td align="center">&nbsp;入职时间</td>
					<td align="center">&nbsp;工资</td>
					<td align="center" valign="middle">备注</td>
					<td align="center" valign="middle">备注</td>
				</tr>
				<tr style="background-color: White; height: 30px">
					<td align="center"><select name="dname">
							<c:forEach items="${deptList }" var="d">
								<option value="${d.dno }">${d.dname }</option>

							</c:forEach>
					</select></td>
					<td align="center"><select name="pname">
							<c:forEach items="${positionList }" var="d">
								<option value="${p.dno }">${p.dname }</option>

					</c:forEach>
					</select></td>
					<td align="center"><input type="text" name="empno" />
					</td>
					<td align="center"><input type="text" name="entrydate" />
					</td>
					<td align="center"><input type="text" name="sal" />
					</td>
					<td align="center"><input type="text" name="remarks" />
					</td>
					<td align="center"><input type="text" name="remarks" />
					</td>
				</tr>
				<!-- <tr style="background-color: White; height: 30px">
					<td colspan="8">薪资结构</td>
				</tr> -->
				<!-- <tr style="background-color: White; height: 30px">
					<td align="center" rowspan="1">基本工资</td>
					<td align="center" rowspan="1">岗位工资</td>
					<td align="center" rowspan="1">绩效奖金</td>
					<td align="center" rowspan="1">四金</td>
					<td align="center" colspan="3">福利补贴</td>
					<td align="center" rowspan="1">合计</td>
				</tr>
				<tr style="background-color: White; height: 30px">
					<td align="center">通讯费</td>
					<td align="center">车费</td>
					<td align="center">午餐费</td>
				</tr>
				<tr style="background-color: White; height: 30px">
					<td align="center">&nbsp;</td>
					<td align="center">&nbsp;</td>
					<td align="center">&nbsp;</td>
					<td align="center">&nbsp;</td>
					<td align="center">&nbsp;</td>
					<td align="center">&nbsp;</td>
					<td align="center">&nbsp;</td>
					<td align="center">&nbsp;</td>
				</tr> -->
				<!-- <tr style="background-color: White; height: 30px">
					<td colspan="8">
						工作记录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>新增</a>
					</td>
				</tr>
				<tr style="background-color: White; height: 30px">
					<td colspan="8">
						<table width="100%" border="1" cellpadding="0"
							style="border-top: 1px solid #fff; border-bottom: 1px solid #fff;"
							cellspacing="0" class="mian_b_bg_xz" style="text-align: center;">
							<tr>
								<td rowspan="1">序号</td>
								<td colspan="2">时间</td>
								<td rowspan="1">职位</td>
								<td rowspan="1">描述</td>
								<td rowspan="1">备注</td>
								<td rowspan="1">操作</td>
							</tr>
							<tr>
								<td>开始时间</td>
								<td>结束时间</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td>&nbsp;</td>
								<td></td>
								<td></td>
								<td>删除</td>
							</tr>

						</table></td>
				</tr> -->
				<tr style="background-color: White; height: 30px">
					<td style="text-align: left" colspan="6">人事部确认</td>
					<td align="center"><select name="D1">
							<option>张三
					</select></td>
				</tr>
				<tr style="background-color: White; height: 30px">
					<td style="text-align: left" colspan="6">人事部负责人确认</td>
					<td align="center"><select name="D1">
							<option>李四
					</select></td>
				</tr>
				<tr style="background-color: White; height: 30px">
					<td style="text-align: left" colspan="6">填表日期</td>
					<td align="center"><input id="Text14" type="text"
						style="border: 0px; width: 100px" value="2012-03-21">
					</td>
				</tr>
				<tr style="background-color: White; height: 30px">
					<td align="center" colspan="8"><a href="Employlee.jsp"> <img
							src="..\images\bnt_03.gif" style="margin-right: 10px;" width="80"
							height="22">
					</a><a href="Employlee.jsp"><img src="..\images\bnt_05.gif" alt=""
							width="80" height="22">
					</a></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>