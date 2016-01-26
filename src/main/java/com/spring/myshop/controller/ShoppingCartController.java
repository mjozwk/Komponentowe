package com.spring.myshop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.myshop.cart.Cart;
import com.spring.myshop.dao.ProductDAO;
import com.spring.myshop.product.Product;

@Controller
@RequestMapping("shoppingcart")
public class ShoppingCartController {

	@Autowired
	private ProductDAO productDao;

	@RequestMapping(value = "/ordernow/{id}", method = RequestMethod.GET)
	public String ordernow(@PathVariable(value = "id") int id,  HttpSession session) {

		if (session.getAttribute("cart") == null) {
			List<Cart> cart = new ArrayList<Cart>();
			cart.add(new Cart(productDao.getById(id), 1));
			session.setAttribute("cart", cart);
		} else {
			List<Cart> cart = (List<Cart>) session.getAttribute("cart");
			int index = isExisting(id, session);
			if (index == -1)
				cart.add(new Cart(productDao.getById(id), 1));
			else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
			}

			session.setAttribute("cart", cart);
		}
		return "cart";
	}

	private int isExisting(int id, HttpSession session) {
		List<Cart> cart = (List<Cart>) session.getAttribute("cart");
		for (int i = 0; i < cart.size(); i++)
			if (cart.get(i).getProduct().getId() == id)
				return i;
		return -1;
	}
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable(value = "id") int id, HttpSession session){
		List<Cart> cart = (List<Cart>) session.getAttribute("cart");
		int index = isExisting(id, session);
		cart.remove(index);
		session.setAttribute("cart", cart);
		return "cart";
	}
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String shoppingCart(){
		return "cart";
	}
}
