package com.ms.learning.balances.management.dto;

import java.time.LocalDateTime;

import com.ms.learning.balances.model.entity.consts.AccessStatus;
import com.ms.learning.balances.model.entity.consts.AccessType;

public record AccessHistoryListItem (		
		String member,		
		LocalDateTime accessedAt,
		AccessType accessType,
		AccessStatus status,
		String remark
		) {

}
