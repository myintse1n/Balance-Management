package com.jdc.online.balances.services;

import static com.jdc.online.balances.utils.EntityOperations.safeCall;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import com.jdc.online.balances.controller.member.dto.MemberProfileDetails;
import com.jdc.online.balances.controller.member.dto.ProfileEditForm;
import com.jdc.online.balances.model.repo.MemberRepo;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberProfileService {

	private final MemberRepo memberRepo;

	@PreAuthorize("hasAuthority('Admin') or #username eq authentication.name")
	public MemberProfileDetails loadProfile(String username) {
		return safeCall(memberRepo.findOneByAccountUsername(username)
				.map(MemberProfileDetails::from), "Member", "login id", username);
	}

	@PreAuthorize("hasAuthority('Admin') or #username eq authentication.name")
	public ProfileEditForm getEditForm(String username) {
		return safeCall(memberRepo.findOneByAccountUsername(username)
				.map(ProfileEditForm::from), "Member", "login id", username);
	}
	
	
}
