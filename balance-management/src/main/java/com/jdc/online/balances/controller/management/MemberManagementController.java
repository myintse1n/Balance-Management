package com.jdc.online.balances.controller.management;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jdc.online.balances.controller.management.dto.MemberSearch;
import com.jdc.online.balances.controller.management.dto.MemberStatusForm;

@Controller
@RequestMapping("admin/member")
public class MemberManagementController {

	@GetMapping
	public String index(ModelMap model, MemberSearch search,
			@RequestParam(required = false, defaultValue = "0") int page,
			@RequestParam(required = false, defaultValue = "10") int size) {
		// business logic
		return "management/members/list";
	}

	@GetMapping("{id}")
	public String showDetails(@PathVariable int id, ModelMap model) {
		//business Logic
		return "management/members/details";
	}

	@PostMapping("{id}/update")
	public String updateStatus(
			@PathVariable int id,
			ModelMap model,
			@Validated MemberStatusForm statusForm,
			BindingResult result) {
		
		if(result.hasErrors()) {
			//show member details before error occurs
			return "management/members/details";
		}
		
		return "redirect:/admin/member/%d".formatted(id);
	}

}
