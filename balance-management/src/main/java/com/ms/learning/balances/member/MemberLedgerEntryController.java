package com.ms.learning.balances.member;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ms.learning.balances.model.entity.BalanceType;

@Controller
@RequestMapping("member/entry")
public class MemberLedgerEntryController {

	@GetMapping("{type}")
	public String index(@PathVariable String type, ModelMap model) {
		model.put("type", BalanceType.from(type.toLowerCase()).name().toLowerCase());
		return "member/entries/list";
	}

	@GetMapping("add-new/{type}")
	String addNew(@PathVariable String type, ModelMap model) {
		model.put("type", BalanceType.from(type.toLowerCase()).name().toLowerCase());
		return "member/entries/edit";
	}

	@GetMapping("edit/{id}")
	String edit(@PathVariable String id) {
		return "member/entries/edit";
	}

}
