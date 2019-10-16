package com.em.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.em.dao.EmployeeDao;
import com.em.model.Employee;
import com.em.util.SecurityUtility;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeDao dao;
	
	@Transactional
	public String saveEmployee(Employee e) {
		// Creating random password for employee
		String password = SecurityUtility.createRandomPassword();
		// Encrypting password and assigning password to the employee
		e.setPassword(SecurityUtility.encriptPassword(password));
		String id = dao.saveEmployee(e);
		
		// Return employee id
		return id;
	}
}
