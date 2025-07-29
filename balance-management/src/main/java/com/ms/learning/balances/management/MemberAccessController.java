package com.ms.learning.balances.management;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ms.learning.balances.management.dto.AccessHistorySearch;

@Controller("AdminMemberAccessController")
@RequestMapping("admin/member/access")
public class MemberAccessController {
	
	@GetMapping
	String accessHistory(
			ModelMap model,
			AccessHistorySearch search,
			@RequestParam(required = false, defaultValue = "0") int page,
			@RequestParam(required = false, defaultValue = "10") int size) {
		
		return "management/access/list";
	}

}
