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

import com.app.dao.AdminDao;
import com.app.model.Admin;

@Service
public class AdminUserDetailsServiceImpl implements UserDetailsService{
	@Autowired
	private AdminDao dao;

	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		//1. Get Model class user based on username
		Admin admin=dao.findUserByEmail(username);
		//2. Construct Set<GA>

		User u=null;
		//a. Read model class roles
		if(admin!=null) {

			//String role=admin.getRole();
			//b. create GA for Spring f/w User
			Set<GrantedAuthority> auths=new HashSet<>();

			GrantedAuthority ga=new SimpleGrantedAuthority("ADMIN");
			auths.add(ga);
			
			//3. Create Spring f/w User object from Model class
			u=new User(admin.getEmail(), admin.getPassword(), auths);
		}
		//4. return same
		System.out.println("---------------------------------------------------------------------------");
		System.out.println("---------------------------------------------------------------------------");
		System.out.println("ADMIN : " + admin);
		System.out.println("---------------------------------------------------------------------------");
		System.out.println("---------------------------------------------------------------------------");
		return u;
	}

}


