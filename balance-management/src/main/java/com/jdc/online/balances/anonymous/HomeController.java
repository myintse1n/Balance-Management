package com.jdc.online.balances.anonymous;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping({
	"/",
	"/signin"
})
public class HomeController {

	@GetMapping
	public String index() {
		return "anonymous/SignIn";
	}
	
	@PostMapping
	public String home(@RequestParam String username, @RequestParam String password) {
		return "redirect:%s/home".formatted(password);
	}
}
