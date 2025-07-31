package com.ms.learning.balances.member.dto;

import java.time.LocalDateTime;

public record MemberProfileDetails(
		long id,
		String name,
		String phone,
		String mail,
		String address,
		LocalDateTime registeredAt,
		LocalDateTime lastAccess
		) {

}
