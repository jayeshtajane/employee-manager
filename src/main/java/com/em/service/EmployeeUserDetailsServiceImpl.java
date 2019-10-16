package com.em.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.em.dao.EmployeeDao;
import com.em.model.Employee;

@Service
public class EmployeeUserDetailsServiceImpl implements UserDetailsService {
	@Autowired
	private EmployeeDao dao;

	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Employee emp=dao.findEmployeeByEmail(username);
		System.out.println("Employee : " + emp.getEmployeeName());
		User u=null;

		if(emp!=null) {
			Set<GrantedAuthority> auths=new HashSet<>();

			GrantedAuthority ga=new SimpleGrantedAuthority("EMPLOYEE");
			auths.add(ga);
			
			u=new User(emp.getEmail(), emp.getPassword(), auths);
		}
		//4. return same
		return u;
	}
}
