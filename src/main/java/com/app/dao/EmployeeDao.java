package com.app.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.app.model.Employee;


@Repository
public class EmployeeDao {

	@Autowired
	private HibernateTemplate ht;
	
	public Employee findUserByEmail(String email) {
		Employee emp=null;
		
		String hql=" from com.app.model.Employee  where email=?0";
		@SuppressWarnings("unchecked")
		List<Employee> list=(List<Employee>) ht.find(hql, email);
		
		if(list!=null && !list.isEmpty()) {
			emp=list.get(0);
		}
		
		return emp;
	}
}




