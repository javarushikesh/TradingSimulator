package com.igate.tradingsimulator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class LoginController {
 
	@RequestMapping("/login")
	public String login() {
 		return "login";
	}
	
	@RequestMapping("/signup")
	public String signup() {
 		return "signup";
	}
	
	@RequestMapping("/welcome")
	public ModelAndView helloWorld() {
 
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from CrunchifyHelloWorld.java **********</div><br><br>";
		System.out.println(message);
		return new ModelAndView("welcome", "message", message);
	}
}

