package com.em.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.em.model.Employee;

@Repository
public class EmployeeDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Employee findEmployeeByEmail(String email) {
		CriteriaBuilder cb = sessionFactory.getCurrentSession().getCriteriaBuilder();
		
		CriteriaQuery<Employee> cq = cb.createQuery(Employee.class);
		
		Root<Employee> root = cq.from(Employee.class);
		
		cq.select(root);
		
		cq.where(cb.equal(root.get("email"), email));
		
		Query q = sessionFactory.getCurrentSession().createQuery(cq);

		@SuppressWarnings("unchecked")
		List<Employee> e = q.getResultList();
		if(e == null)
			return null;
		return (Employee) e.get(0);
		
	}

	public String saveEmployee(Employee e) {
		return (String) sessionFactory.getCurrentSession().save(e);
	}
}
