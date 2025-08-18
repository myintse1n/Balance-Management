package com.jdc.online.balances.controller.management;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jdc.online.balances.controller.member.dto.AccessHistorySearch;
import com.jdc.online.balances.services.AccessHistoryService;

import lombok.RequiredArgsConstructor;

@Controller("AdminMemberAccessController")
@RequestMapping("admin/member/access")
@RequiredArgsConstructor
public class MemberAccessController {
	
	private final AccessHistoryService service;
	
	@GetMapping
	String accessHistory(
			ModelMap model,
			AccessHistorySearch searchForm,
			@RequestParam(required = false, defaultValue = "0") int page,
			@RequestParam(required = false, defaultValue = "10") int size) {
		
		var result = service.search(searchForm, page , size);
		model.put("result", result);
		
		return "management/access/list";
	}

}
