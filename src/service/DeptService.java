package service;

import java.util.List;

import entity.Dept;

public interface DeptService {

	/*
	 * 查询所有部门(一般下拉框用)
	 */
	public List<Dept> findAllDept();

}
