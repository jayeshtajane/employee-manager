package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	@RequestMapping("/registration")
	public String registration() {
		return "a-dashboard/employee/employee-form";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "";
	}
	
	@RequestMapping("/email/availability")
	public String checkEmailAvailability() {
		return "";
	}
	
	@RequestMapping("/all")
	public String getAllEmployee() {
		return "a-dashboard/employee/all-employee";
	}
	
	@RequestMapping("/info")
	public String employeeInfo() {
		return "a-dashboard/employee/emp-info";
	}
	
	@RequestMapping("/attendence")
	public String employeeAttendence() {
		return "a-dashboard/attendence/emp-attendence";
	}
	
	@RequestMapping("/payments")
	public String employeePayments() {
		return "a-dashboard/payments/emp-payments";
	}
}
