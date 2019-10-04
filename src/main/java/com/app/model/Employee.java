package com.app.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Employee {
	@Id
	private int empId;
	private String ename;
	private String email;
	private String password;
	private String role;
	
	public Employee() {
		super();
	}
	public Employee(int empId) {
		super();
		this.empId = empId;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Employee [empId=").append(empId).append(", ename=").append(ename).append(", email=")
				.append(email).append(", password=").append(password).append(", role=").append(role).append("]");
		return builder.toString();
	}
}
