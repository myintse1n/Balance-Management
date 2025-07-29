package com.ms.learning.balances.member;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ms.learning.balances.member.dto.BalanceSearch;

@Controller
@RequestMapping("member/balance")
public class MemberReportForBalanceController {

	@GetMapping
	String balanceList(
			ModelMap model,
			BalanceSearch search,
			@RequestParam(required = false, defaultValue = "0") int page, 
			@RequestParam(required = false, defaultValue = "10") int size
			) {
		return "member/balance/list";
	}
	
	@GetMapping("{id}") //yymmdd-code
	String balanceDetails(@PathVariable String id) {
		return "member/balance/details";
	}
}
