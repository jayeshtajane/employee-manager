package com.em.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="company")
public class Company implements Serializable {
	
	@Transient
	private static final long serialVersionUID = -1942705986140615811L;

	@Id
	@GeneratedValue(generator="idGenerator")
	@GenericGenerator(name="idGenerator",strategy="com.em.generator.IdGenerator")
	@Column(name="company_id")
	private String companyId;
	
	@Column(name="company_name")
	private String companyName;
	
	@Column(name="company_address")
	private String companyAddress;
	
	@Column(name="company_phone")
	private String companyPhone;
	
	@Column(name="admin_name")
	private String adminName;
	
	@Column(name="admin_address")
	private String adminAddress;
	
	@Column(name="admin_contact")
	private String adminContact;
	
	@Column(name="email")
	private String email;
	
	@Column(name="password")
	private String password;
	
	@Column(name="hash")
	private String hash;
	
	@OneToMany(mappedBy="company")
	private Set<Employee> employee;
	
	@OneToMany(mappedBy="company")
	private Set<Attendence> attendence;
	
	@OneToMany(mappedBy="company")
	private Set<Payment> payments;
	
	//@Column(name="role")
	//private String role;
	// There are only two roles in this application those are EMP for employee and OWNER for company owner
	
	public Company() {
		super();
	}

	public Company(String companyId) {
		super();
		this.companyId = companyId;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyAddress() {
		return companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public String getCompanyPhone() {
		return companyPhone;
	}

	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminAddress() {
		return adminAddress;
	}

	public void setAdminAddress(String adminAddress) {
		this.adminAddress = adminAddress;
	}

	public String getAdminContact() {
		return adminContact;
	}

	public void setAdminContact(String adminContact) {
		this.adminContact = adminContact;
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

	public String getHash() {
		return hash;
	}

	public void setHash(String hash) {
		this.hash = hash;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<Employee> getEmployee() {
		return employee;
	}

	public void setEmployee(Set<Employee> employee) {
		this.employee = employee;
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
		builder.append("Company [companyId=").append(companyId).append(", companyName=").append(companyName)
				.append(", companyAddress=").append(companyAddress).append(", companyPhone=").append(companyPhone)
				.append(", adminName=").append(adminName).append(", adminAddress=").append(adminAddress)
				.append(", adminContact=").append(adminContact).append(", email=").append(email).append(", password=")
				.append(password).append(", employee=").append(employee).append(", attendence=").append(attendence)
				.append(", payments=").append(payments).append("]");
		return builder.toString();
	}
}
