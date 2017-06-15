package dao;

import java.util.List;

import entity.Dept;

public interface DeptDao {

	/*
	 * 查询所有部门
	 */
	public List<Dept> findAllDept();

}
