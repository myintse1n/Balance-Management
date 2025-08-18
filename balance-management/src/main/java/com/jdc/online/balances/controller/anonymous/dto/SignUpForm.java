package com.jdc.online.balances.controller.anonymous.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class SignUpForm {

	@NotBlank(message = "Please enter name.")
	private String name;
	@NotBlank(message = "Pleaase enter username.")
	@Email(message = "Please enter valid mail.")
	private String userName;
	@NotBlank(message = "Please enter password.")
	private String password;
}
