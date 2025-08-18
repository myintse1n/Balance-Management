package com.jdc.online.balances.utils.listeners;

import org.springframework.context.event.EventListener;
import org.springframework.security.authentication.event.AbstractAuthenticationFailureEvent;
import org.springframework.security.authentication.event.AuthenticationFailureBadCredentialsEvent;
import org.springframework.security.authentication.event.AuthenticationFailureDisabledEvent;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.authentication.event.LogoutSuccessEvent;
import org.springframework.stereotype.Component;

import com.jdc.online.balances.model.repo.MemberActivityRepo;
import com.jdc.online.balances.services.AccessHistoryService;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class AuthenticationEventListener {
	
	private final AccessHistoryService service;
	private final MemberActivityRepo activityRepo;
	
	@EventListener
	public void handle(AuthenticationSuccessEvent event) {
		service.loginSuccess(event.getAuthentication().getName());
	}
	
	@EventListener
	public void handle(LogoutSuccessEvent event) {
		service.logoutSuccess(event.getAuthentication().getName());
	}
	
	
	@EventListener
	public void handle(AbstractAuthenticationFailureEvent event) {
		var message = switch(event){
			case AuthenticationFailureBadCredentialsEvent e -> "Missing login Id or password.";
			case AuthenticationFailureDisabledEvent e -> "Account is disabled.";
			default -> "Other Authentication Failures.";
		};
		
		service.loginFailures(event.getAuthentication().getName(),message);
	}
	

}
