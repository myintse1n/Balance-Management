package com.jdc.online.balances.anonymous.dto;

import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class SignUpForm {

	@NotBlank(message = "Please enter name.")
	private String name;
	@NotBlank(message = "Pleaase enter username.")
	private String userName;
	@NotBlank(message = "Please enter password.")
	private String password;
}
