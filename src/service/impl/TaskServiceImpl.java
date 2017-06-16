package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import service.TaskService;
import dao.TaskDao;
import entity.Task;

@Service
public class TaskServiceImpl implements TaskService {

	@Autowired
	private TaskDao taskDao;

	/*
	 * 增加任务
	 */
	@Override
	public boolean addTask(Task task) {
		if (taskDao.addTask(task) > 0) {
			return true;
		}
		return false;
	}

	/*
	 * 转移任务、延期，任务同意
	 */
	@Override
	public boolean updateTask(Task task) {
		if (taskDao.updateTask(task) > 0) {
			return true;
		}
		return false;
	}

	/*
	 * 查看所有的任务，可以根据条件查询
	 */
	@Override
	public List<Task> findAllTask(Task task) {
		return taskDao.findAllTask(task);
	}

	/*
	 * 任务延期
	 */
	@Override
	public boolean updateLongDate(Task task) {
		if (taskDao.updateLongDate(task) > 0) {
			return true;
		}
		return false;
	}

	/*
	 * 转移是否同意
	 */
	@Override
	public boolean isAgreeTask(Task task) {
		if (taskDao.isAgreeTask(task) > 0) {
			return true;
		}
		return false;
	}
}
