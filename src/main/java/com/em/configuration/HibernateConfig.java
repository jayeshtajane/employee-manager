package com.em.configuration;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.em.model.Attendence;
import com.em.model.Company;
import com.em.model.Employee;
import com.em.model.Payment;

@Configuration
@PropertySource("classpath:application.properties")
@EnableTransactionManagement
public class HibernateConfig implements WebMvcConfigurer {
	
	@Autowired
	private Environment env;

	@Bean
	public DriverManagerDataSource dataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName(env.getProperty("jdbc.driver"));
		ds.setUrl(env.getProperty("jdbc.url"));
		ds.setUsername(env.getProperty("jdbc.username"));
		return ds;
	}

	@Bean
	public LocalSessionFactoryBean sessionFactoryBean() {
		LocalSessionFactoryBean fb = new LocalSessionFactoryBean();
		fb.setDataSource(dataSource());
		fb.setAnnotatedClasses(Company.class, Employee.class, Attendence.class, Payment.class);
		fb.setHibernateProperties(hibernateProperties());
		return fb;
	}
 
	private Properties hibernateProperties() {
		Properties p = new Properties();
		p.put("hibernate.dialect", env.getProperty("hibernate.dialect"));
		p.put("hibernate.show_sql", env.getProperty("hibernate.show_sql"));
		p.put("hibernate.format_sql", env.getProperty("hibernate.format_sql"));
		p.put("hibernate.hbm2ddl.auto", env.getProperty("hibernate.hbm2ddl.auto"));
		return p;
	}

	@Bean
	public HibernateTemplate hibernateTemplate() {
		HibernateTemplate ht = new HibernateTemplate();
		ht.setSessionFactory(sessionFactoryBean().getObject());
		return ht;
	}

	@Bean
	public HibernateTransactionManager transactionManager() {
		HibernateTransactionManager htm = new HibernateTransactionManager();
		htm.setSessionFactory(sessionFactoryBean().getObject());
		return htm;
	}
}
