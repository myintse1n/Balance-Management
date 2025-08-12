package com.jdc.online.balances.member.dto;

import java.time.LocalDateTime;

import com.jdc.online.balances.model.entity.consts.BalanceType;

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
