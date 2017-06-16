package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.TaskDao;
import entity.Task;

@Repository
public class TaskDaoImpl extends SqlSessionDaoSupport implements TaskDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	/*
	 * 增加任务
	 */
	@Override
	public int addTask(Task task) {
		try {
			this.getSqlSession().insert("nsTask.addTask", task);
			return 1;
		} catch (Exception e) {
			return 0;
		}

	}

	/*
	 * 转移任务
	 */
	@Override
	public int updateTask(Task task) {
		try {
			this.getSqlSession().insert("nsTask.updateTask", task);
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}

	/*
	 * 查看所有的任务，可以根据条件查询
	 */
	@Override
	public List<Task> findAllTask(Task task) {
		return getSqlSession().selectList("nsTask.findAllTask", task);
	}

	/*
	 * 任务延期
	 */
	@Override
	public int updateLongDate(Task task) {
		try {
			this.getSqlSession().insert("nsTask.updateLongDate", task);
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}

	/*
	 * 转移同意
	 */
	@Override
	public int isAgreeTask(Task task) {
		try {
			this.getSqlSession().insert("nsTask.isAgreeTask", task);
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}

}
