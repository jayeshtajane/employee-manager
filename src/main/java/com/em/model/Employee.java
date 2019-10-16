package com.em.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="employee")
public class Employee {
	@Id
	@GeneratedValue(generator="idGenerator")
	@GenericGenerator(name="idGenerator",strategy="com.em.generator.IdGenerator")
	@Column(name="employee_id")
	private String employeeId;
	
	@Column(name="employee_name")
	private String employeeName;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="employee_city")
	private String employeeCity;
	
	@Column(name="employee_zipcode")
	private String employeeZipcode;
	
	@Column(name="employee_contact")
	private String employeeContact;
	
	@Column(name="employee_desg")
	private String employeeDesg;
	
	@Column(name="employee_salary")
	private double employeeSalary;
	
	@Column(name="employee_balance")
	private double employeeBalance;
	
	@Column(name="email")
	private String email;
	
	@Column(name="password")
	private String password;
	
	@ManyToOne
	@JoinColumn(name="company_id")
	private Company company;
	
	@OneToMany(mappedBy="employee")
	private Set<Attendence> attendence;
	
	@OneToMany(mappedBy="employee")
	private Set<Payment> payments;

	public Employee() {
		super();
	}

	public Employee(String employeeId) {
		super();
		this.employeeId = employeeId;
	}

	public Employee(String employeeId, String employeeName, String gender, String employeeCity, String employeeZipcode,
			String employeeContact, String employeeDesg, double employeeSalary, double employeeBalance, String email,
			String password, Company company, Set<Attendence> attendence, Set<Payment> payments) {
		super();
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.gender = gender;
		this.employeeCity = employeeCity;
		this.employeeZipcode = employeeZipcode;
		this.employeeContact = employeeContact;
		this.employeeDesg = employeeDesg;
		this.employeeSalary = employeeSalary;
		this.employeeBalance = employeeBalance;
		this.email = email;
		this.password = password;
		this.company = company;
		this.attendence = attendence;
		this.payments = payments;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmployeeCity() {
		return employeeCity;
	}

	public void setEmployeeCity(String employeeCity) {
		this.employeeCity = employeeCity;
	}

	public String getEmployeeZipcode() {
		return employeeZipcode;
	}

	public void setEmployeeZipcode(String employeeZipcode) {
		this.employeeZipcode = employeeZipcode;
	}

	public String getEmployeeContact() {
		return employeeContact;
	}

	public void setEmployeeContact(String employeeContact) {
		this.employeeContact = employeeContact;
	}

	public String getEmployeeDesg() {
		return employeeDesg;
	}

	public void setEmployeeDesg(String employeeDesg) {
		this.employeeDesg = employeeDesg;
	}

	public double getEmployeeSalary() {
		return employeeSalary;
	}

	public void setEmployeeSalary(double employeeSalary) {
		this.employeeSalary = employeeSalary;
	}

	public double getEmployeeBalance() {
		return employeeBalance;
	}

	public void setEmployeeBalance(double employeeBalance) {
		this.employeeBalance = employeeBalance;
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

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Set<Attendence> getAttendence() {
		return attendence;
	}

	public void setAttendence(Set<Attendence> attendence) {
		this.attendence = attendence;
	}

	public Set<Payment> getPayments() {
		return payments;
	}

	public void setPayments(Set<Payment> payments) {
		this.payments = payments;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Employee [employeeId=").append(employeeId).append(", employeeName=").append(employeeName)
				.append(", gender=").append(gender).append(", employeeCity=").append(employeeCity)
				.append(", employeeZipcode=").append(employeeZipcode).append(", employeeContact=")
				.append(employeeContact).append(", employeeDesg=").append(employeeDesg).append(", employeeSalary=")
				.append(employeeSalary).append(", employeeBalance=").append(employeeBalance).append(", email=")
				.append(email).append(", password=").append(password).append(", company=").append(company)
				.append(", attendence=").append(attendence).append(", payments=").append(payments).append("]");
		return builder.toString();
	}
}
