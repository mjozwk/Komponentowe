package com.spring.myshop.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.myshop.dao.UserDAO;
import com.spring.myshop.user.User;

@Controller
public class RegistrationController {
	@Autowired
	UserDAO userDao;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String register(Model model) {
		User user = new User();
		model.addAttribute(user);// w formie ustawiamy wszystkie
													// pola z klasy Samochod
													// jako name=""
		logger.info("Jestem w new User()");
		return "registration";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String wyswietl(Model model, User user) {
		userDao.insert(user);
		logger.info("Jestem w insert user");
		return "redirect:/";
	}
}
