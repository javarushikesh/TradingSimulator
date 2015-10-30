package com.igate.tradingsimulator.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.igate.tradingsimulator.model.User;
 
@Controller
public class LoginController {
 
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
	
	  @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public String viewLogin(Map<String, Object> model) {
	        User user = new User();
	        model.put("user", user);
	        return "login";
	    }
	 
	    @RequestMapping(value = "/login", method = RequestMethod.POST)
	    public String doLogin(@Valid @ModelAttribute("user") User user,
	            BindingResult result, Map<String, Object> model) {
	 
	        if (result.hasErrors()) {
	            return "login";
	        }
	 
	        return "welcome";
	    }
}

