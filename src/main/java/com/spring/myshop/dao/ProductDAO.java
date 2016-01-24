package com.spring.myshop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.myshop.category.Category;
import com.spring.myshop.product.Product;
import com.spring.myshop.user.User;

public class ProductDAO {

	private DataSource dataSource;

	CategoryDAO categoryDao;

	public CategoryDAO getCategoryDao() {
		return categoryDao;
	}

	public void setCategoryDao(CategoryDAO categoryDao) {
		this.categoryDao = categoryDao;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void insert(Product product) {
		String sql = "INSERT INTO product" + "(name, description, price, cat_id) VALUES (?, ?, ?, ?)";
		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setString(2, product.getDescription());
			ps.setInt(3, product.getPrice());
			ps.setInt(4, product.getCategory().getId());
			ps.executeUpdate();
			ps.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}

	public Product getById(int id) {
		String sql = "SELECT * FROM produkt Where id = " + id;
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			Product product = null;
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				product = new Product(rs.getInt("id"), rs.getString("name"), rs.getString("description"),
						rs.getInt("price"), categoryDao.getById(rs.getInt("cat_id")));
			}
			rs.close();
			ps.close();
			return product;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}

	public Product getByCategory(Category category) {//nie uzywac!
		String sql = "SELECT * FROM produkt Where cat_id = " + category.getId();
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			Product product = null;
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				product = new Product(rs.getInt("id"), rs.getString("name"), rs.getString("description"),
						rs.getInt("price"), categoryDao.getById(rs.getInt("cat_id")));
			}
			rs.close();
			ps.close();
			return product;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}

	public List<Product> getProductList() {
		List<Product> ret = new ArrayList<Product>();
		String sql = "SELECT * FROM produkt";
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			Product product = null;
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				product = new Product(rs.getInt("id"), rs.getString("name"), rs.getString("description"),
						rs.getInt("price"), categoryDao.getById(rs.getInt("cat_id")));
				ret.add(product);
			}
			rs.close();
			ps.close();
			return ret;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}
}
