package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/attendence")
public class AttendenceController {

	@RequestMapping("/")
	public String getTodaysAttendenceSheet(Integer offset, Integer number) {
		return "a-dashboard/attendence/attendence-sheet";
	}
	
	@RequestMapping("/update")
	public String updateAttendence() {
		return "";
	}
	
	@RequestMapping("/all")
	public String getAllAttendence(Integer offset, Integer number) {
		return "a-dashboard/attendence/all-attendence";
	}
	
	@RequestMapping("/day")
	public String getAttendenceByDate(String date, Integer offset, Integer number) {
		return "a-dashboard/attendence/day-attendence";
	}
}
