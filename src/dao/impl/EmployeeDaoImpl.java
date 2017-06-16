package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.EmployeeDao;
import entity.Dept;
import entity.Employee;

@Repository
public class EmployeeDaoImpl extends SqlSessionDaoSupport implements
		EmployeeDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	/*
	 * 查询所有员工信息
	 */
	@Override
	public List<Employee> findAllEmp(Employee emp) {

		return getSqlSession().selectList("nsEmp.findAllEmpByPage", emp);
	}

	/*
	 * 增加员工
	 */
	@Override
	public int addEmp(Employee emp) {
		try {
			getSqlSession().insert("nsEmp.addEmp", emp);
			return 1;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	/*
	 * 修改员工信息
	 */
	@Override
	public int updateEmp(Employee emp) {
		try {
			getSqlSession().update("nsEmp.updateEmp", emp);
			return 1;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	/*
	 * 删除员工
	 */
	@Override
	public int delEmp(Employee emp) {
		// TODO Auto-generated method stub
		return 0;
	}

	/*
	 * 根据部门编号获取员工
	 */
	@Override
	public List<Employee> getEmpByDeptId(Dept dept) {
		return getSqlSession().selectList("nsEmp.getEmpByDeptId", dept);
	}

}
