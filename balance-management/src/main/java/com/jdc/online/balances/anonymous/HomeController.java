package com.jdc.online.balances.anonymous;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = {
		"/","/signin"
})
public class HomeController {

	@GetMapping
	String home() {
		return "anonymous/SignIn";
	}
}
