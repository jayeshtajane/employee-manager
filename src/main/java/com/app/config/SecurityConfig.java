package com.app.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	@Bean
	public static BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Configuration
	@Order(1)
	public static class App1ConfigurationAdapter extends WebSecurityConfigurerAdapter {
		
		@Autowired
		@Qualifier("adminUserDetailsServiceImpl")
		private UserDetailsService service;
		
		public App1ConfigurationAdapter() {
			super();
		}
		
		@Override
		protected void configure(AuthenticationManagerBuilder auth) throws Exception {
			auth.userDetailsService(service)
			.passwordEncoder(encoder());
		}

		@Override
		protected void configure(HttpSecurity http) throws Exception {
			
			http.
			antMatcher("/admin*").authorizeRequests()
			.anyRequest().hasAuthority("ADMIN")

			.and()
			.formLogin()
			.loginPage("/a-login")
			.loginProcessingUrl("/admin_login")
			.failureUrl("/a-login?error=loginError")
			.defaultSuccessUrl("/a-dashboard")

			.and()
			.logout()
			.logoutUrl("/admin_logout")
			.logoutSuccessUrl("/a-login?success=admin_logout")
			.deleteCookies("JSESSIONID")

			.and()
			.exceptionHandling()
			.accessDeniedPage("/403")

			.and()
			.csrf().disable();
		}
	}

	@Configuration
	@Order(2)
	public static class App2ConfigurationAdapter extends WebSecurityConfigurerAdapter {
		
		@Autowired
		@Qualifier("employeeUserDetailsServiceImpl")
		private UserDetailsService service;
		
		public App2ConfigurationAdapter() {
			super();
		}
		
		@Override
		protected void configure(AuthenticationManagerBuilder auth) throws Exception {
			auth.userDetailsService(service)
			.passwordEncoder(encoder());
		}
		
		@Override
		protected void configure(HttpSecurity http) throws Exception {
			
			http.
			antMatcher("/user*").authorizeRequests()
			.anyRequest().hasAuthority("USER")
			
			.and()
			.formLogin()
			.loginPage("/e-login")
			.loginProcessingUrl("/user_login")
			.failureUrl("/e-login?error=loginError")
			.defaultSuccessUrl("/e-dashboard")
			.and()
			.logout()
			.logoutUrl("/user_logout")
			.logoutSuccessUrl("/e-login?success=user_logout")
			.deleteCookies("JSESSIONID")
			.and()
			.exceptionHandling()
			.accessDeniedPage("/403")
			.and()
			.csrf().disable();
		}
	}
}
