package com.jdc.online.balances.utils.formatter;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class AppDateTimeFormatterModelAttribute {
	
	@ModelAttribute(name = "dtf")
	AppDateTimeFormatter formatter() {
		return new AppDateTimeFormatter();
	}
	
}
