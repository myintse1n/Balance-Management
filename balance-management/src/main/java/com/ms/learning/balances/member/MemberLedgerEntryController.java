package com.ms.learning.balances.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ms.learning.balances.model.entity.BalanceType;

@Controller
@RequestMapping("member/entry/{type}")
public class MemberLedgerEntryController {

	@GetMapping
	public String index() {
		return "member/entries/list";
	}
	
	@ModelAttribute("type")
	BalanceType getType(@PathVariable String type) {
		return BalanceType.from(type);
	}
	
}
