package com.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class OldController {
	
	@RequestMapping("/test")
	public @ResponseBody String test() {
		return "OKKKKKKKKKKKKKKKKKK";
	}
	
	@RequestMapping("/loginUser")
	public String loginUser() {
		return "e-login";
	}
	
	@RequestMapping("/loginAdmin")
	public String loginAdmin() {
		return "a-login";
	}
	
	@RequestMapping("/adminPage")
	public String adminDash() {
		return "a-dashboard";
	}
	
	@RequestMapping("/userPage")
	public String userDash() {
		return "e-dashboard";
	}
	
	@RequestMapping("/403")
	public String denied() {
		return "403";
	}
}
