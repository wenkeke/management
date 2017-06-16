package controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import service.DeptService;
import service.EmployeeService;
import entity.Employee;

@Controller
public class EmployeeController {

	/**
	 * 业务逻辑层对象
	 */
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private DeptService deptService;

	/**
	 * 查询所有员工信息
	 * 
	 * 同时可 高级搜索
	 */
	@RequestMapping("findAllEmp.do")
	public String findAllEmp(@ModelAttribute Employee emp, HttpSession session,
			String currentPage) {
		emp.setPageNumber(8);// 灵活改变
		List<Employee> list = employeeService.findAllEmp(emp);
		session.setAttribute("sessionEmpList", list);
		session.setAttribute("emp", emp);
		return "redirect:rsxz/Employlee.jsp";
	}

	/**
	 * 进入增加员工页面之前进行页面加载
	 */
	@RequestMapping("forAddEmp.do")
	public String forAddEmp(HttpSession session) {
		// 加载部门下拉框和， 职位下拉框内容
		session.setAttribute("deptList", deptService.findAllDept());
		return "redirect:rsxz/AddEmploylee.jsp";
	}

	/**
	 * 添加员工
	 */
	@RequestMapping("addEmp.do")
	public void addEmp(@ModelAttribute("emp") Employee emp,
			HttpServletResponse response) {
		try {
			if (employeeService.addEmp(emp)) {
				response.sendRedirect("findAllEmp.do");

			} else {
				response.sendRedirect("forAddEmp.do");
			}
		} catch (ParseException e) {
			new Exception("应该是转化时间出错了");
		} catch (IOException e) {
			new Exception("应该是读写io出错了,控制器跳转出错,addemp.do中");
		}

	}
}
