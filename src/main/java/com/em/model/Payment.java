package com.em.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="payments")
public class Payment {
	
	@Id
	@GeneratedValue(generator="idGenerator")
	@GenericGenerator(name="idGenerator",strategy="com.em.generator.IdGenerator")
	@Column(name="payment_id")
	private String paymentId;

	@Column(name="paid_amount")
	private double paidAmount;
	
	@Column(name="is_extra")
	private boolean extra;
	
	@Column(name="payment_time")
	private LocalDateTime paymentTime;
	
	@ManyToOne
	@JoinColumn(name="employee_id")
	private Employee employee;
	
	@ManyToOne
	@JoinColumn(name="company_id")
	private Company company;
	
	public Payment() {
		super();
	}

	public Payment(String paymentId) {
		super();
		this.paymentId = paymentId;
	}

	public Payment(String paymentId, double paidAmount, boolean extra, LocalDateTime paymentTime, String employeeName) {
		super();
		this.paymentId = paymentId;
		this.paidAmount = paidAmount;
		this.extra = extra;
		this.paymentTime = paymentTime;
		this.employee = new Employee();
		this.employee.setEmployeeName(employeeName); 
	}

	public String getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}

	public double getPaidAmount() {
		return paidAmount;
	}

	public void setPaidAmount(double paidAmount) {
		this.paidAmount = paidAmount;
	}

	public boolean isExtra() {
		return extra;
	}

	public void setExtra(boolean extra) {
		this.extra = extra;
	}

	public LocalDateTime getPaymentTime() {
		return paymentTime;
	}

	public void setPaymentTime(LocalDateTime paymentTime) {
		this.paymentTime = paymentTime;
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

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Payment [paymentId=").append(paymentId).append(", paidAmount=").append(paidAmount)
				.append(", extra=").append(extra).append(", paymentTime=").append(paymentTime).append(", employee=")
				.append(employee).append(", company=").append(company).append("]");
		return builder.toString();
	}
}
