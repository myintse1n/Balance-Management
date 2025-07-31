package com.ms.learning.balances.member.dto;

import java.time.LocalDateTime;

import com.ms.learning.balances.model.entity.consts.BalanceType;

public record LedgerListItem(
		int id,
		BalanceType type,
		String name,
		boolean status,
		LocalDateTime createdAt,
		LocalDateTime modifiedAt,
		int total
		){

}
