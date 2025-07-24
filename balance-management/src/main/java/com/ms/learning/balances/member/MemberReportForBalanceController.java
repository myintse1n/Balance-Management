package com.ms.learning.balances.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member/balance")
public class MemberReportForBalanceController {

	@GetMapping
	String balanceList() {
		return "member/balance/list";
	}
	
	@GetMapping("{id}") //yymmdd-code
	String balanceDetails(@PathVariable String id) {
		return "member/balance/details";
	}
}
