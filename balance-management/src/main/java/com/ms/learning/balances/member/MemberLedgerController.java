package com.ms.learning.balances.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ms.learning.balances.model.entity.consts.BalanceType;

@Controller
@RequestMapping("member/ledger")
public class MemberLedgerController {

	@GetMapping
	String ledgerList() {
		return "member/ledgers/list";
	}
	
	
	
	@ModelAttribute("types")
	BalanceType[] getTypes() {
		return BalanceType.values();
	}
}
