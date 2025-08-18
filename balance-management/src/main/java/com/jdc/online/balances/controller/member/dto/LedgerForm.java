package com.jdc.online.balances.controller.member.dto;

import com.jdc.online.balances.model.entity.consts.BalanceType;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class LedgerForm {
	private int id;
	@NotNull(message = "Please select ledger type.")
	private BalanceType type;
	@NotBlank(message = "Please enter ledger name")
	private String name;
	
	private boolean status;

}
