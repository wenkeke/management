package service;

import java.text.ParseException;
import java.util.List;

import entity.Employee;

public interface EmployeeService {
	/*
	 * 查询所有员工信息
	 */
	public List<Employee> findAllEmp(Employee emp);

	/*
	 * 增加员工
	 */
	public boolean addEmp(Employee emp) throws ParseException;

	/*
	 * 修改员工信息
	 */
	public boolean updateEmp(Employee emp);

	/*
	 * 删除员工
	 */
	public boolean delEmp(Employee emp);
}
