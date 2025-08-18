package com.jdc.online.balances.controller.member.dto;

import java.math.BigDecimal;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class LedgerEntryFormItem {

	@NotBlank(message = "Please enter item name.")
	private String itemName;
	@NotNull(message = "Please enter unit price.")
	private BigDecimal unitPrice;
	@NotNull(message = "Please enter quantity.")
	private Integer quantity;
}
