package com.ms.learning.balances.management.dto;

import java.time.LocalDate;

import com.ms.learning.balances.model.entity.consts.AccessStatus;

import lombok.Data;

@Data
public class AccessHistorySearch {
	
	private AccessStatus status;
	
	private LocalDate dateFrom;
	
	private LocalDate dateTo;
	
	private String keyword;
	 

}
