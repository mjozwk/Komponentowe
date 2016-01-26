package com.spring.myshop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.myshop.cart.Cart;
import com.spring.myshop.dao.ProductDAO;
import com.spring.myshop.dao.UserDAO;
import com.spring.myshop.product.Product;
import com.spring.myshop.user.User;

@Controller
public class AdministratorController {
	
	@Autowired
	ProductDAO productDao;
	@Autowired
	UserDAO userDao;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/admin/user")
	public String admin(Model model) {

		List<User> list = userDao.getUserList();

		model.addAttribute("users", list);

		return "adminUserDelete";
	}

	@RequestMapping(value = "/admin")
	public String admin() {
		return "admin";
	}

	@RequestMapping(value = "/admin/user/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable(value = "id") int id, HttpSession session) {
		userDao.delete(id);
		return "redirect:/admin/user";
	}

	/*
	 * @RequestMapping(value = "/admin/product") public String adminProduct() {
	 * 
	 * return "adminProduct"; }
	 */

	@RequestMapping(value = "/admin/product/insert", method = RequestMethod.GET)
	public String productInsert(Model model) {
		Product product = new Product();
		model.addAttribute(product);
		logger.info("New Product();");
		return "adminProductInsert";
	}

	@RequestMapping(value = "/admin/product/insert", method = RequestMethod.POST)
	public String productInsert(Model model, Product product) {
		logger.info("Blabla");
		productDao.insert(product);
		return "redirect:/admin";
	}

	@RequestMapping(value = "/admin/product/delete", method = RequestMethod.GET)
	public String productDelete(Model model) {
		List<Product> list= productDao.getProductList();
	    model.addAttribute("products", list);
		return "adminProductDelete";
	}

	@RequestMapping(value = "/admin/product/delete/{id}", method = RequestMethod.GET)
	public String productDelete(@PathVariable(value = "id") int id, Product product) {
		productDao.delete(id);
		return "redirect:/admin/product/delete";
	}
}
