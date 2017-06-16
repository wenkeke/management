package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import service.DeptService;
import service.TaskService;
import entity.Task;

@Controller
public class TaskController {

	@Autowired
	private TaskService taskService;
	@Autowired
	private DeptService deptService;

	/*
	 * 查看所有的任务，可以根据条件查询
	 */
	@RequestMapping("findAllTask.do")
	public String findAllTask(@ModelAttribute Task task, HttpSession session) {
		session.setAttribute("taskList", taskService.findAllTask(task));
		return "redirect:TaskAllot.jsp";
	}

	/*
	 * 进入增加页面
	 */
	@RequestMapping("toAddTask")
	public String toAddTask(HttpSession session) {
		// 加载部门信息
		session.setAttribute("deptList", deptService.findAllDept());
		return "redirect:AddTask.jsp";
	}

	/*
	 * 增加任务,增加好进入任务列表
	 */
	@RequestMapping("addTask.do")
	public String addTask(@ModelAttribute Task task, HttpSession session) {
		if (taskService.addTask(task)) {
			return findAllTask(task, session);
		} else {
			return findAllTask(task, session);
		}
	}

	/*
	 * 转移任务、延期，任务同意
	 */
	@RequestMapping("updateTask")
	public String updateTask(Task task) {
		return "";
	}

	/*
	 * 任务延期
	 */
	@RequestMapping("updateLongDate")
	public String updateLongDate(Task task) {
		return "";
	}

	/*
	 * 转移是否同意
	 */
	@RequestMapping("isAgreeTask")
	public String isAgreeTask(Task task) {
		return "";
	}
}
