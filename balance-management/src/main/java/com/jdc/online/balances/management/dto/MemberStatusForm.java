package com.jdc.online.balances.management.dto;

import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class MemberStatusForm {
	
	@NotNull(message = "Please select status.")
	boolean status;
	String reason;
}
