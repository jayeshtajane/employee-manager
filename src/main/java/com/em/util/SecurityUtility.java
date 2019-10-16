package com.em.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class SecurityUtility {
	
	public static final int MIN_PASSWORD_LEN = 8;
	
	public static String createRandomPassword() {
		final String alphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "0123456789"
                + "abcdefghijklmnopqrstuvxyz"
                + "!@#$%^&*()_+=-,.;':\"/\\[]{}"; 

		StringBuilder sb = new StringBuilder(MIN_PASSWORD_LEN); 
		
		for (int i = 0; i < MIN_PASSWORD_LEN; i++) { 
		int index = (int)(alphaNumericString.length() * Math.random()); 
		sb.append(alphaNumericString.charAt(index)); 
		} 
		
		return sb.toString(); 
	}
	
	public static String encriptPassword(String rawPassword) {
		return new BCryptPasswordEncoder().encode(rawPassword);
	}
}
