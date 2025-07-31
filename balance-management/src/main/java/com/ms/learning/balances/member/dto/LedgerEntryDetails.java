package com.ms.learning.balances.member.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

public record LedgerEntryDetails(
		String code,
		String ledgerName,
		BigDecimal amount,
		LocalDateTime issuedAt,
		String particular,
		List<LedgerEntryDetailsItem> items
		) {

}
 