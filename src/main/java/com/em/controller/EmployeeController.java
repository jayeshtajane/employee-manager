package com.em.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.em.exception.EmpRegistrationException;
import com.em.model.Company;
import com.em.model.Employee;
import com.em.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	@Autowired
	private EmployeeService service;
	
	@RequestMapping("/registration")
	public String registration(@RequestParam(required=false) Boolean flag, ModelMap map, @RequestParam String comId) {
		map.addAttribute("flag", flag);
		Employee emp = new Employee();
		emp.setCompany(new Company(comId));
		map.addAttribute("employee", emp);
		return "a-dashboard/employee/employee-form";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public @ResponseBody String register(@ModelAttribute Employee employee) {
		System.out.println("Emp : " + employee);
		String id;
		if((id = service.saveEmployee(employee)) != null) {
			if(id == null || id.equals("")) {
				throw new EmpRegistrationException();
			}
			return "OK";
		}
		throw new EmpRegistrationException();
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
