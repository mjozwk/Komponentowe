package com.spring.myshop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.context.annotation.ComponentScan;

import com.spring.myshop.category.Category;
import com.spring.myshop.user.User;
@ComponentScan("com.spring.myshop.dao.CategoryDAO")
public class CategoryDAO {
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public Category getById(int id) {
		String sql = "SELECT * FROM kategoria Where id = " + id;
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			Category category = null;
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				category = new Category(rs.getInt("id"), rs.getString("name"), rs.getString("description"));
			}
			rs.close();
			ps.close();
			return category;
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

	public void insert(Category category) {
		String sql = "INSERT INTO kategoria " + "(name, description) VALUES (?, ?)";
		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, category.getName());
			ps.setString(2, category.getDescription());
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

}
