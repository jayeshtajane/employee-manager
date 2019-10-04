package com.app.test;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PwdCreator {
	public static void main(String[] args) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String pwd = encoder.encode("user");
		System.out.println(pwd + "^");
	}
}
