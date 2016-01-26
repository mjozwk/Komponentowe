package com.spring.myshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.myshop.cart.Cart;
import com.spring.myshop.dao.ProductDAO;
import com.spring.myshop.product.Product;
import com.spring.myshop.user.User;

@Controller
@ComponentScan("com.spring.myshop.dao.ProductDAO")
public class ProductsController {
	@Autowired
	ProductDAO productDao;
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String products(Model model){
		
		List<Product> list= productDao.getProductList();

	    model.addAttribute("products", list);

	    
		return "products";
	}
	@RequestMapping(value = "/products/beauty", method = RequestMethod.GET)
	public String productsBeauty(Model model){
		
		List<Product> list= productDao.getProductList();

	    model.addAttribute("products", list);

	    
		return "beauty";
	}
	@RequestMapping(value = "/products/culture", method = RequestMethod.GET)
	public String productCulture(Model model){
		
		List<Product> list= productDao.getProductList();

	    model.addAttribute("products", list);

	    
		return "culture";
	}
	@RequestMapping(value = "/products/electronics", method = RequestMethod.GET)
	public String productsElectronics(Model model){
		
		List<Product> list= productDao.getProductList();

	    model.addAttribute("products", list);

	    
		return "electronics";
	}
	@RequestMapping(value = "/products/house", method = RequestMethod.GET)
	public String productsHouse(Model model){
		
		List<Product> list= productDao.getProductList();

	    model.addAttribute("products", list);

	    
		return "house";
	}

}
