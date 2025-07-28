package com.ms.learning.balances.management;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("AdminMemberAccessController")
@RequestMapping("admin/access")
public class MemberAccessController {
	
	@GetMapping
	String accessHistory() {
		return "management/access/list";
	}

}
