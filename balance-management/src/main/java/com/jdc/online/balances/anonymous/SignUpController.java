package com.jdc.online.balances.anonymous;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jdc.online.balances.anonymous.dto.SignUpForm;
import com.jdc.online.balances.services.SignUpService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("signup")
@RequiredArgsConstructor
public class SignUpController {
	
	private final SignUpService signUpService;

	@GetMapping
	public String index() {
		return "anonymous/SignUp";
	}

	@PostMapping
	public String singup(
			@Validated @ModelAttribute(name = "form") SignUpForm singupForm,
			ModelMap model,
			RedirectAttributes redirectAttributes,
			BindingResult result) {

		if (result.hasErrors()) {
			return "anonymous/SignUp";
		}
		try {
			var message = signUpService.signUp(singupForm);
			redirectAttributes.addFlashAttribute("message",message);
			return "redirect:/signin";
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			return "anonymous/SignUp";
		}
	}

	@ModelAttribute(name = "form")
	SignUpForm form() {
		return new SignUpForm();
	}
}
