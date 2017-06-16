package dao;

import java.util.List;

import entity.Dept;
import entity.Employee;

/**
 * 员工
 * 
 * @author shinian
 * 
 */
public interface EmployeeDao {

	/*
	 * 查询所有员工信息
	 */
	public List<Employee> findAllEmp(Employee emp);

	/*
	 * 增加员工
	 */
	public int addEmp(Employee emp);

	/*
	 * 修改员工信息
	 */
	public int updateEmp(Employee emp);

	/*
	 * 删除员工
	 */
	public int delEmp(Employee emp);

	/*
	 * 根据部门编号获取员工
	 */
	public List<Employee> getEmpByDeptId(Dept dept);
}
