package com.jdc.online.balances.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.jdc.online.balances.model.entity.consts.Role;
import com.jdc.online.balances.security.LoginSuccessHandler;

@Configuration
@EnableMethodSecurity
public class WebSecurityConfig  {
	
	@SuppressWarnings("removal")
	@Bean
	SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		
		//Request Authorization
		http.authorizeHttpRequests(req -> {
			req.requestMatchers("/","/signup","/signin","/resources/**"," /h2-console/**", "/error").permitAll();
			req.requestMatchers("/admin/**").hasAuthority(Role.Admin.name());
			req.requestMatchers("/member/**").hasAuthority(Role.Member.name());
			req.anyRequest().authenticated();
		});
		
		http.csrf().disable(); // needed for H2 console POST
		http.headers().frameOptions().disable(); // allow H2 console
		
		//Login Form
		http.formLogin(login->{
			login.loginPage("/signin");
			login.successHandler(new LoginSuccessHandler());
		});
		
		//Logout Form
		http.logout(logout->{
			logout.logoutUrl("/signout");
			logout.logoutSuccessUrl("/");
		});
		
		return http.build();
	}
	
	@Bean
	PasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	

}
