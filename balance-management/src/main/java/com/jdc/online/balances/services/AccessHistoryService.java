package com.jdc.online.balances.services;

import java.time.Instant;
import java.util.function.Function;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jdc.online.balances.controller.member.dto.AccessHistoryListItem;
import com.jdc.online.balances.controller.member.dto.AccessHistorySearch;
import com.jdc.online.balances.model.PageResult;
import com.jdc.online.balances.model.entity.AccessHistory;
import com.jdc.online.balances.model.entity.AccessHistory_;
import com.jdc.online.balances.model.entity.consts.AccessStatus;
import com.jdc.online.balances.model.entity.consts.AccessType;
import com.jdc.online.balances.model.entity.embeddables.AccessHistoryPk;
import com.jdc.online.balances.model.entity.embeddables.AccessHistoryPk_;
import com.jdc.online.balances.model.repo.AccessHistoryRepo;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AccessHistoryService {
	
	private final AccessHistoryRepo accessHistoryRepo;

	@Transactional
	public void signUp(String username) {
		createHistory(username,AccessType.Signup,AccessStatus.Success);
	}
	
	@Transactional
	public void loginSuccess(String username) {
		createHistory(username,AccessType.Login,AccessStatus.Success);
	}

	@Transactional
	public void logoutSuccess(String username) {
		createHistory(username,AccessType.Logout,AccessStatus.Success);
	}

	@Transactional
	public void loginFailures(String username, String message) {
		createHistory(username,AccessType.Login,AccessStatus.Fails);
	}
	
	@Transactional(readOnly = true)
	public PageResult<AccessHistoryListItem> search(
			AccessHistorySearch searchForm,
			int page, 
			int size) {
		return accessHistoryRepo.search(queryFunc(searchForm), count(searchForm), page, size);
	}
	
	private Function<CriteriaBuilder, CriteriaQuery<AccessHistoryListItem>> queryFunc(AccessHistorySearch searchForm) {
		return cb->{
				var cq = cb.createQuery(AccessHistoryListItem.class);
				var root = cq.from(AccessHistory.class);
				
				AccessHistoryListItem.select(cq,root);
				cq.where(searchForm.where(cb, root));
				cq.orderBy(cb.desc(root.get(AccessHistory_.id).get(AccessHistoryPk_.ACCESS_AT)));
				
				return cq;
		};
	}
	
	private Function<CriteriaBuilder, CriteriaQuery<Long>> count(AccessHistorySearch searchForm) {
		return cb->{
			var cq = cb.createQuery(Long.class);
			var root = cq.from(AccessHistory.class);
			
			cq.select(cb.count(root.get(AccessHistory_.id)));
			cq.where(searchForm.where(cb, root));
			return cq;
		};
	}

	private void createHistory(String username, AccessType type, AccessStatus status) {
		createHistory(username, type, status, null);
	}
	
	private void createHistory(String username, AccessType type, AccessStatus status,String remark) {
		var accessHistoryPk = new AccessHistoryPk();
		accessHistoryPk.setUsername(username);
		accessHistoryPk.setAccessAt(Instant.now());
		
		var accessHistory = new AccessHistory();
		accessHistory.setId(accessHistoryPk);
		accessHistory.setType(type);
		accessHistory.setStatus(status);
		accessHistory.setRemark(remark);
		
	    accessHistoryRepo.save(accessHistory);
	}
	


	

}
