package com.jdc.online.balances.controller.member.dto;

import java.time.LocalDateTime;

import com.jdc.online.balances.model.entity.AccessHistory;
import com.jdc.online.balances.model.entity.consts.AccessStatus;
import com.jdc.online.balances.model.entity.consts.AccessType;

import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;

public record AccessHistoryListItem (		
		String member,		
		LocalDateTime accessedAt,
		AccessType accessType,
		AccessStatus status,
		String remark
		) {

	public static void select(CriteriaQuery<AccessHistoryListItem> cq, Root<AccessHistory> root) {
		
	}

}
