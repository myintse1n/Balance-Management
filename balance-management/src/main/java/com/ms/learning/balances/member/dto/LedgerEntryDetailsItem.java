package com.ms.learning.balances.member.dto;

import java.math.BigDecimal;

public record LedgerEntryDetailsItem(
		String itemName,
		BigDecimal unitPrice,
		int quantity
		) {

}
