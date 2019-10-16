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

import com.em.dao.CompanyDao;
import com.em.model.Company;
import com.em.util.Authorities;

@Service
public class CompanyUserDetailsServiceImpl implements UserDetailsService{
	@Autowired
	private CompanyDao dao;

	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Company company=dao.findCompanyByEmail(username);
		System.out.println("Company : " + company.getCompanyName()); 
		User u=null;
		if(company!=null) {
			Set<GrantedAuthority> auths=new HashSet<>();

			GrantedAuthority ga=new SimpleGrantedAuthority(Authorities.ADMIN.toString());
			auths.add(ga);
			
			u=new User(company.getEmail(), company.getPassword(), auths);
		}
		//4. return same
		return u;
	}

}


