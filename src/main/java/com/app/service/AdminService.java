package com.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.AdminDao;
import com.app.model.Admin;

@Service
public class AdminService {
	
	@Autowired
	private AdminDao dao;
	
	@Transactional(readOnly = true)
	public Admin findUserByEmail(String email) {
		return dao.findUserByEmail(email);
	}
}




