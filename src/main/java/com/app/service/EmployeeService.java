package com.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.EmployeeDao;
import com.app.model.Employee;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeDao dao;

	@Transactional(readOnly = true)
	public Employee getEmployeeById(String email) {
		return dao.findUserByEmail(email);
	}
}