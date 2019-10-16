package com.em.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="attendence")
public class Attendence {
	
	@Id
	@GeneratedValue(generator="idGenerator")
	@GenericGenerator(name="idGenerator",strategy="com.em.generator.IdGenerator")
	@Column(name="attendence_id")
	private String attendenceId;
	
	@Column(name="attendence_date")
	private String attendenceDate;
	
	@Column(name="is_present")
	private boolean present;
	
	@ManyToOne
	@JoinColumn(name="employee_id")
	private Employee employee;
	
	@ManyToOne
	@JoinColumn(name="company_id")
	private Company company;
	
	public Attendence() {
		super();
	}
	
	public Attendence(boolean present, String empId, String empName) {
		this.present = present;
		this.employee = new Employee();
		this.employee.setEmployeeId(empId);
		this.employee.setEmployeeName(empName); 
	}

	public String getAttendenceId() {
		return attendenceId;
	}

	public void setAttendenceId(String attendenceId) {
		this.attendenceId = attendenceId;
	}

	public String getAttendenceDate() {
		return attendenceDate;
	}

	public void setAttendenceDate(String attendenceDate) {
		this.attendenceDate = attendenceDate;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public boolean isPresent() {
		return present;
	}

	public void setPresent(boolean present) {
		this.present = present;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Attendence [attendenceId=").append(attendenceId).append(", attendenceDate=")
				.append(attendenceDate).append(", employee=").append(employee).append(", company=").append(company)
				.append(", present=").append(present).append("]");
		return builder.toString();
	}
}
