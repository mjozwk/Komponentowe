package com.spring.myshop.product;

import com.spring.myshop.category.Category;

public class Product {
	
	private int id;
	private String name;
	private String description;
	private int price;
	private int cat_id;
	private Category category;
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCat_id() {
		return cat_id;
	}
	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}
	public Product(int id, String name, String description, int price, Category category) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.category = category;
	}
	public Product() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price
				+ ", cat_id=" + cat_id + ", category=" + category + "]";
	}
	
	

}
