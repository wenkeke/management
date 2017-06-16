package service;

import java.util.List;

import entity.Task;

public interface TaskService {

	/*
	 * 增加任务
	 */
	public boolean addTask(Task task);

	/*
	 * 转移任务、延期，任务同意
	 */
	public boolean updateTask(Task task);

	/*
	 * 查看所有的任务，可以根据条件查询
	 */
	public List<Task> findAllTask(Task task);

	/*
	 * 任务延期
	 */
	public boolean updateLongDate(Task task);

	/*
	 * 转移是否同意
	 */
	public boolean isAgreeTask(Task task);

}
