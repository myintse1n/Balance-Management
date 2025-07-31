package com.ms.learning.balances.member;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ms.learning.balances.member.dto.AccessHistorySearch;

@Controller
@RequestMapping("member/access")
public class MemberAccessController {

	@GetMapping
	String accessHistory(
			ModelMap map,
			AccessHistorySearch search,
			@RequestParam(required = false, defaultValue = "0") int page,
			@RequestParam(required = false, defaultValue = "10") int size
			) {
		return "member/access/list";
	}
}
