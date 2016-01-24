package com.spring.myshop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.myshop.cart.Cart;
import com.spring.myshop.dao.UserDAO;
import com.spring.myshop.product.Product;
import com.spring.myshop.user.User;

@Controller
public class AdministratorController {
	
	@Autowired
	UserDAO userDao;
	
	@RequestMapping(value = "/admin")
	public String admin(Model model){
		
		List<User> list= userDao.getUserList();

	    model.addAttribute("users", list);
	    
		return "admin";
	}
	
	@RequestMapping(value = "/admin/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable(value = "id") int id, HttpSession session){
		userDao.delete(id);
		return "redirect:/admin";
	}

}
