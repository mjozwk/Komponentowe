package com.spring.myshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.myshop.dao.UserDAO;
import com.spring.myshop.user.User;

@Controller

public class LoginController {
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, @RequestParam(value = "status", required = false) String status) {
		if (status != null && status.equals("invalid"))
			model.addAttribute("errorMessage", "Nieprawid³owa nazwa u¿ytkownika lub has³o");
		return "login";
	}
	


}
