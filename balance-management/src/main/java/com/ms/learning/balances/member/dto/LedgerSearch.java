package com.ms.learning.balances.member.dto;

import com.ms.learning.balances.model.entity.consts.BalanceType;

import lombok.Data;

@Data
public class LedgerSearch {
	
	private BalanceType type;
	
	private String keyword;

}
