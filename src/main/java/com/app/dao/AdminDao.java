package com.app.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.app.model.Admin;
import com.app.model.Employee;

@Repository
public class AdminDao {
	
	@Autowired
	private HibernateTemplate ht;
	
	public Admin findUserByEmail(String email) {
		Admin admin=null;
		
		String hql=" from com.app.model.Admin where email=?0";
		List<Admin> list=(List<Admin>) ht.find(hql, email);
		
		if(list!=null && !list.isEmpty()) {
			admin=list.get(0);
		}
		
		return admin;
	}
}
