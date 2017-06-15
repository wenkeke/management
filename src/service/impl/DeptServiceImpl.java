package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import service.DeptService;
import dao.DeptDao;
import entity.Dept;

@Service
public class DeptServiceImpl implements DeptService {

	@Autowired
	private DeptDao deptDao;

	@Override
	public List<Dept> findAllDept() {
		return deptDao.findAllDept();
	}

}
