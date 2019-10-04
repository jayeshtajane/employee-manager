package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/e-dashboard")
public class EmployeeDashController {
	
	@RequestMapping("/attendence")
	public String getAttendence() {
		return "e-dashboard/attendence";
	}
	
	@RequestMapping("/my-info")
	public String getMyInfo() {
		return "e-dashboard/my-info";
	}
	
	@RequestMapping("/payments")
	public String getPayments() {
		return "e-dashboard/payments";
	}
	
	@RequestMapping("/notifications")
	public String getNotifications() {
		return "e-dashboard/notifications";
	}
}
