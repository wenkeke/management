package service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import service.EmployeeService;
import dao.EmployeeDao;
import entity.Dept;
import entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	/*
	 * 创建数据称对象
	 */
	@Autowired
	private EmployeeDao employeeDao;

	/*
	 * 查询所有员工信息
	 */
	@Override
	public List<Employee> findAllEmp(Employee emp) {
		// 对时间处理，是否能正常转为时间格式，如果转错直接在异常中置为null,如同啥事没发生一样。
		if (null != emp.getSearchstarttime()
				&& !"".equals(emp.getSearchstarttime())) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				emp.setStarttime(sdf.parse(emp.getSearchstarttime())); // 转为时间格式变量为sql判断做准备
			} catch (ParseException e) {
				emp.setSearchstarttime(null);// 把起始时间置为null
			}
		}
		// 同理对结束时间进行处理
		if (null != emp.getSearchendtime()
				&& !"".equals(emp.getSearchendtime())) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			if (emp.getStarttime() != null) {
				if (emp.getStarttime().getTime() > emp.getStarttime().getTime()) {
					// 开始时间大于了结束时间，不符合。
					emp.setSearchstarttime(null);// 把开始时间去掉一个
				}
			}
			try {
				emp.setEndtime(sdf.parse(emp.getSearchendtime())); // 转为时间格式变量为sql判断做准备
			} catch (ParseException e) {
				emp.setSearchendtime(null);// 把结束时间置为null
			}
		}
		// 对多字段属性进行处理，分为字符串和Integer,方便同种类型的 用where or 关系 语句写sql模糊查询
		if (null != emp.getSearchfull() && !"".equals(emp.getSearchfull())) {
			// 直接转为数字，如果异常，则按字符串处理，
			// 字符串中如果出现，‘or’，‘and’，‘'’ 注入性词汇,直接把此属性字段置为null
			String str = emp.getSearchfull();
			try {
				emp.setSearchnumber(Integer.parseInt(str));// 转为数字
			} catch (NumberFormatException e) {
				// 如果有注入性标识符，把此字段置为null
				if (str.toLowerCase().indexOf(" or ") >= 0
						|| str.toLowerCase().indexOf(" and ") >= 0
						|| str.indexOf('\'') >= 0) {
					emp.setSearchfull(null);
				}
				// 如果字符串没有注入影响，则为查询字段赋值
				emp.setSearchstring(str);
			}
		}
		return employeeDao.findAllEmp(emp);
	}

	/*
	 * 增加员工
	 */
	@Transactional
	@Override
	public boolean addEmp(Employee emp) throws ParseException {
		// 把字符串转为时间类型
		if (!"".equals(emp.getBirdate()) && null != emp.getBirdate()) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			emp.setBirthdate(sdf.parse(emp.getBirdate()));
		}
		/*
		 * if (!"".equals(emp.getFormdate()) && null != emp.getFormdate()) {
		 * SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 * emp.set(sdf.parse(emp.getFormdate())); }
		 */
		if (!"".equals(emp.getStringentrydate())
				&& null != emp.getStringentrydate()) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			emp.setEntrydate(sdf.parse(emp.getStringentrydate()));
		}

		if (employeeDao.addEmp(emp) > 0) {
			return true;
		}
		return false;
	}

	/*
	 * 修改员工信息
	 */
	@Override
	public boolean updateEmp(Employee emp) {
		if (employeeDao.updateEmp(emp) > 0) {
			return true;
		}
		return false;
	}

	/*
	 * 删除员工
	 */
	@Override
	public boolean delEmp(Employee emp) {
		return false;
	}

	// public EmployeeDao getEmployeeDao() {
	// return employeeDao;
	// }
	//
	// public void setEmployeeDao(EmployeeDao employeeDao) {
	// this.employeeDao = employeeDao;
	// }
	/*
	 * 根据部门编号获取人员
	 */@Override
	public List<Employee> getEmpByDeptId(Dept dept) {
		return employeeDao.getEmpByDeptId(dept);
	}

}
