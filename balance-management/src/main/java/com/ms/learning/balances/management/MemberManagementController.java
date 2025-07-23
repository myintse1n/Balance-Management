package com.ms.learning.balances.management;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("admin/member")
public class MemberManagementController {

	@GetMapping
	public String index() {
		return "management/members/list";
	}
	
	@GetMapping("{id}")
	public String showDetails(@PathVariable int id) {
		return "management/members/details";
	}
	
	@GetMapping("access")
	String accessHistory() {
		return "management/access/list";
	}
}
