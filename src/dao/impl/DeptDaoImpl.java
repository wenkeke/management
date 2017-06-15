package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.DeptDao;
import entity.Dept;

@Repository
public class DeptDaoImpl extends SqlSessionDaoSupport implements DeptDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	/*
	 * 查询所有部门(一般下拉框用)
	 */
	@Override
	public List<Dept> findAllDept() {
		return getSqlSession().selectList("nsDept.findAllDept");
	}

}
