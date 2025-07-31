package com.ms.learning.balances.member.dto;

import java.time.LocalDate;

import com.ms.learning.balances.model.entity.consts.Gender;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class ProfileEditForm {
	@NotBlank(message = "Please enter name")
	private String name;
	@NotNull(message = "Please select gender.")
	private Gender gender;
	@NotNull(message = "Please select date of birth.")
	private LocalDate dateOfBirth;
	@NotBlank(message = "Please enter phone number.")
	private String phone;
	@NotNull(message = "Please enter mail address.")
	private String mail;
	@NotNull(message = "Please select region.")
	private Integer region;
	@NotNull(message = "Please select district.")
	private Integer district;
	@NotNull(message = "Please select township.")
	private Integer township;
	@NotBlank(message = "Please enter address.")
	private String address;
	
	private String profileImage;

}
