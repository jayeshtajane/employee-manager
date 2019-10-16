package com.em.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.em.model.Company;

@Repository
public class CompanyDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Company findCompanyByEmail(String email) {
		CriteriaBuilder cb = sessionFactory.getCurrentSession().getCriteriaBuilder();
		
		CriteriaQuery<Company> cq = cb.createQuery(Company.class);
		
		Root<Company> root = cq.from(Company.class);
		
		cq.select(root);
		
		cq.where(cb.equal(root.get("email"), email));
		
		Query q = sessionFactory.getCurrentSession().createQuery(cq);

		@SuppressWarnings("unchecked")
		List<Company> comp = q.getResultList();
		if(comp.size() <= 0)
			return null;
		else
			return comp.get(0);
	}

}
