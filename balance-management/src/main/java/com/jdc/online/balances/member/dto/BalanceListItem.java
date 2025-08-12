package com.jdc.online.balances.member.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public record BalanceListItem(
		String code,
		LocalDateTime issuedAt,
		String ledgerName,
		String particular,
		BigDecimal expenses,
		BigDecimal incomes,
		BigDecimal balance
		) {

}
