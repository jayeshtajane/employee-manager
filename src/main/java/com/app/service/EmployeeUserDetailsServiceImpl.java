package com.app.service;

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

import com.app.dao.EmployeeDao;
import com.app.model.Employee;

@Service
public class EmployeeUserDetailsServiceImpl implements UserDetailsService {
	@Autowired
	private EmployeeDao dao;

	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		//1. Get Model class user based on username
		Employee emp=dao.findUserByEmail(username);
		//2. Construct Set<GA>

		User u=null;
		//a. Read model class roles
		if(emp!=null) {

			//String role=emp.getRole();
			//b. create GA for Spring f/w User
			Set<GrantedAuthority> auths=new HashSet<>();

			GrantedAuthority ga=new SimpleGrantedAuthority("EMPLOYEE");
			auths.add(ga);
			
			//3. Create Spring f/w User object from Model class
			u=new User(emp.getEmail(), emp.getPassword(), auths);
		}
		//4. return same
		System.out.println("---------------------------------------------------------------------------");
		System.out.println("---------------------------------------------------------------------------");
		System.out.println("EMPLOYEE : " + emp);
		System.out.println("---------------------------------------------------------------------------");
		System.out.println("---------------------------------------------------------------------------");
		return u;
	}
}
