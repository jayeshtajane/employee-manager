package com.em.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AppController {
	
	@RequestMapping("/")
    public String helloWorld() {
        return "index";
    }
	
	@RequestMapping("/a-login")
	public String adminLoginScreen() {
		return "a-login";
	}
	
	@RequestMapping("/e-login")
	public String employeeLoginScreen() {
		return "e-login";
	}
	
	@RequestMapping("/suscribe")
	public @ResponseBody String suscribeNewsLetter() {
		return "OK";
	}
	
	@RequestMapping("/a-dashboard")
	public String adminDashboard() {
		return "a-dashboard";
	}
	
	@RequestMapping("/e-dashboard")
	public String empDashboard() {
		return "e-dashboard";
	}
	
	@RequestMapping("/a-dashboard/notifications")
	public String getAdminNotifications() {
		return "a-dashboard/notification/notifications";
	}
}
