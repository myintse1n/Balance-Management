package com.ms.learning.balances.member.dto;

import java.time.LocalDateTime;

public record BalanceItem(
		LocalDateTime issuedAt,
		String category,
		String particular,
		int expenses,
		int incomes,
		int balance
		) {

}
