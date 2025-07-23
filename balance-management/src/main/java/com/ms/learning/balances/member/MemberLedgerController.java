package com.ms.learning.balances.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member/ledger")
public class MemberLedgerController {

	@GetMapping
	String ledgerList() {
		return "member/ledgers/list";
	}
}
