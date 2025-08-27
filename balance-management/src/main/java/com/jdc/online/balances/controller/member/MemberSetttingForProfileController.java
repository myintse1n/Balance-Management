package com.jdc.online.balances.controller.member;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.jdc.online.balances.controller.member.dto.ProfileEditForm;
import com.jdc.online.balances.services.MemberProfileService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("member/profile")
@RequiredArgsConstructor
public class MemberSetttingForProfileController {
	
	private final MemberProfileService profileService;

	@GetMapping
	public String edit() {
		return "member/profile/edit";
	}
	
	@PostMapping("photo")
	String uploadPhoto(@RequestParam MultipartFile file) {
		return "redirect:/member/profile";
	}
	
	@PostMapping
	String updateProfile(
			ModelMap map,
			@Validated @ModelAttribute(name = "form") ProfileEditForm editForm,
			BindingResult result
			) {
		if(result.hasErrors()) {
			return "member/profile/edit";
		}
		
		return "redirect:/member/home";
	}
	
	@ModelAttribute(name = "form")
	ProfileEditForm editForm() {
		var username = SecurityContextHolder.getContext().getAuthentication().getName();
		return profileService.getEditForm(username); 
	}
}
