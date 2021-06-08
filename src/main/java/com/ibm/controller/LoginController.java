package com.ibm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LoginController {

	
	@RequestMapping(value="/")
	public String login(ModelMap model) {
		System.out.println("\n\n\n ---- User ---- \n\n\n");
		return "login";
	}

	@RequestMapping(value="/loginError")
	public String loginError(ModelMap model) {
		model.addAttribute("error", "true");
		return "login";

	}

	@RequestMapping(value="/logout")
    public String logout()
    {
        return "login";
    }
	
	@RequestMapping(value="/loggingout",method = RequestMethod.POST)
    public String logout1()
    {
        return "logout";
    }
}

