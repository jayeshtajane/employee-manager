package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/payments")
public class PaymentController {
	
	@RequestMapping("/salary")
	public String getSalary() {
		return "a-dashboard/payments/salary";
	}
	
	@RequestMapping("/salary/pay")
	public String paySalary() {
		return "a-dashboard";
	}
	
	@RequestMapping("/extra")
	public String getExtraPayForm() {
		return "a-dashboard/payments/extra-pay";
	}
	
	@RequestMapping("/extra/pay")
	public String payExtra() {
		return "";
	}
	
	@RequestMapping("/all")
	public String getAllPayments() {
		return "a-dashboard/payments/all-payments";
	}
	
}
