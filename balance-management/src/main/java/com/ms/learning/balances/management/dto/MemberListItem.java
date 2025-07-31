package com.ms.learning.balances.management.dto;

import java.time.LocalDateTime;

public record MemberListItem(
		Long id,

		String name,

		LocalDateTime registeredAt,

		LocalDateTime lastLoginAt,

		String status,

		LocalDateTime changedAt,

		String remark) {

}
