package com.kgate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class WelcomeController {

	public WelcomeController() {

		// System.out.println("WelcomeController::Constructor");

	}

	@RequestMapping("/")
	public String index() {

		// System.out.println("form loaded successfully");
		return "wish";

	}

	@GetMapping("/ang")
	public String ang() {

		// System.out.println("form loaded successfully");
		return "angular";

	}

	@GetMapping("/wish")
	public @ResponseBody String wish(final @RequestParam("name") String name) {
		if (null != name && !"".equals(name)) {
			System.out.println("name" + name);
			return "Hello," + name;
		} else {
			System.out.println("none: " + name);
			return "";

		}
	}
}
