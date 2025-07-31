package com.ms.learning.balances.member.dto;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class LedgerEntrySearch {

	private LocalDateTime dateFrom;
	
	private LocalDateTime dateTo;
	
	private String keyword;
}
