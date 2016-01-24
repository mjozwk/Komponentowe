package com.spring.myshop;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.myshop.dao.ProductDAO;
import com.spring.myshop.dao.UserDAO;
import com.spring.myshop.user.User;

public class AppTest {
	
	public static void main(String[] args){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("root-context.xml");
		UserDAO userDao = (UserDAO) ctx.getBean("userDAO");
		userDao.delete(2);
		
		
	}
	
}
