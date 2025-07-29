package com.ms.learning.balances.management.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class MemberSearch {
	
	private boolean status;
	
	private LocalDate dateFrom;
	
	private LocalDate dateTo;
	
	private String name;
	
	
}
