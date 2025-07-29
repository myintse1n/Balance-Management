package com.ms.learning.balances.anonymous;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ms.learning.balances.anonymous.dto.SignUpForm;

@Controller
@RequestMapping("signup")
public class SignUpController {

	@GetMapping
	public String index() {
		return "anonymous/SignUp";
	}

	@PostMapping
	public String singup(@Validated @ModelAttribute(name = "form") SignUpForm singupForm, BindingResult result) {

		if (result.hasErrors()) {
			return "redirect:/signup";
		}
		// Business Logic
		return "redirect:/signin";
	}

	@ModelAttribute(name = "form")
	SignUpForm form() {
		return new SignUpForm();
	}
}
