package com.jdc.online.balances.services;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.jdc.online.balances.anonymous.dto.SignUpForm;
import com.jdc.online.balances.model.entity.Account;
import com.jdc.online.balances.model.entity.Member;
import com.jdc.online.balances.model.entity.MemberActivity;
import com.jdc.online.balances.model.entity.consts.MemberStatus;
import com.jdc.online.balances.model.entity.consts.Role;
import com.jdc.online.balances.model.repo.AccountRepo;
import com.jdc.online.balances.model.repo.MemberActivityRepo;
import com.jdc.online.balances.model.repo.MemberRepo;
import com.jdc.online.balances.utils.exceptions.AppBusinessException;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SignUpService {

	private final AccountRepo accountRepo;
	private final MemberRepo memberRepo;
	private final MemberActivityRepo activityRepo;
	private final PasswordEncoder encoder;
	
	
	public String signUp(SignUpForm form) {
		
		if(accountRepo.existsById(form.getUserName())) {
			throw new AppBusinessException("User email already exists. Please Login.");
		}
		
		var account = new Account();
		account.setUsername(form.getUserName());
		account.setPassword(encoder.encode(form.getPassword()));
		account.setRole(Role.Member);
		account.setActive(true);
		
		var acc = accountRepo.save(account);
		
		var member = new Member();
		member.setAccount(acc);
		member.setName(form.getName());
		member.setEmail(form.getUserName());
		
		var savedMember = memberRepo.save(member);
		
		var activity = new MemberActivity();
		activity.setMember(savedMember);
		activity.setStatus(MemberStatus.Active);
		activity.setBalance(BigDecimal.ZERO);
		activity.setRegisteredAt(LocalDateTime.now());
		activity.setLastAccessAt(LocalDateTime.now());
		
		activityRepo.save(activity);
		
		return "Your account is registered successfully. Please login again.";
	}
	
	
}
