package com.spring.myshop.cart;

import com.spring.myshop.product.Product;

public class Cart {
private int id;
private String name;
private float price;
private int quantity;
private Product product;

public Product getProduct() {
	return product;
}
public void setProduct(Product product) {
	this.product = product;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public Cart(Product product, int quantity) {
	super();
	this.product = product;
	this.quantity = quantity;
}


}
