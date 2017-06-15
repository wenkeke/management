package controller;

import java.util.List;

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

	/*
	 * 业务逻辑层对象
	 */
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private DeptService deptService;

	/*
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

	/*
	 * 增加数据之前进行页面加载
	 */
	@RequestMapping("forAddEmp.do")
	public String forAddEmp(HttpSession session) {
		// 加载部门下拉框和，职位下拉框内容
		session.setAttribute("deptList", deptService.findAllDept());
		return "redirect:rsxz/AddEmploylee.jsp";
	}
}
