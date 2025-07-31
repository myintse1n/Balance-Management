package com.ms.learning.balances.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.ms.learning.balances.utils.BalanceTypeConverter;

@Configuration
public class WebApplicationConfig implements WebMvcConfigurer {

	@Override
	public void addFormatters(FormatterRegistry registry) {
		registry.addConverter(new BalanceTypeConverter());
	}
}
