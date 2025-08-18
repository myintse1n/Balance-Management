package com.jdc.online.balances.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jdc.online.balances.controller.member.dto.LedgerForm;
import com.jdc.online.balances.controller.member.dto.LedgerSearch;
import com.jdc.online.balances.model.entity.consts.BalanceType;

@Controller
@RequestMapping("member/ledger")
public class MemberLedgerController {

	@GetMapping
	String ledgerList(
			ModelMap model,
			LedgerSearch search,
			@RequestParam(required = false, defaultValue = "0") int page,
			@RequestParam(required = false, defaultValue = "10") int size) {
		
		//add ledger search logic
		
		return "member/ledgers/list";
	}
	
	@PostMapping
	String saveLedger(
			ModelMap model,
			@Validated @ModelAttribute(name = "form") LedgerForm ledgerForm,
			BindingResult result
			) {
		
		if(result.hasErrors()) {
			return "member/ledgers/list";
		}
		
		return "redirect:/member/ledger";
	}
	
	@ModelAttribute("types")
	BalanceType[] getTypes() {
		return BalanceType.values();
	}
	
	@ModelAttribute(name = "form")
	LedgerForm form(@RequestParam(required = false) Integer id) {
		
		if(id != null) {
			// search from database response with form
		}
		
		return new LedgerForm();
	}
}
