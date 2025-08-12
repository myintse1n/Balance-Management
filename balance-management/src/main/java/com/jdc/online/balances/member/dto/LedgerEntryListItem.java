package com.jdc.online.balances.member.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public record LedgerEntryListItem (
		String code,
		LocalDateTime issuedAt,
		String ledgerName, 
		String partiular,
		BigDecimal amount
		){

}
