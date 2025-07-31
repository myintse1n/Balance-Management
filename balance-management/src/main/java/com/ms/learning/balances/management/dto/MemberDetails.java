package com.ms.learning.balances.management.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;

import com.ms.learning.balances.model.entity.consts.Gender;

public record MemberDetails(
		long id,
		String name,
		LocalDate dateOfBirth,
		Gender gender,
		String phone,
		String email,
		String address,
		String township,
		String region,
		boolean status,
		LocalDateTime registeredAt,
		LocalDateTime lastAccessAt
		) {

}
