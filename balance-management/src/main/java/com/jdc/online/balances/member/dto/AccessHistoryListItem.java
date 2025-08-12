package com.jdc.online.balances.member.dto;

import java.time.LocalDateTime;

import com.jdc.online.balances.model.entity.consts.AccessStatus;
import com.jdc.online.balances.model.entity.consts.AccessType;

public record AccessHistoryListItem (		
		String member,		
		LocalDateTime accessedAt,
		AccessType accessType,
		AccessStatus status,
		String remark
		) {

}
