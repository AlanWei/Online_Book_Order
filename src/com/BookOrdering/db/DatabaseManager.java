package com.BookOrdering.db;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.BookOrdering.model.Admin;
import com.BookOrdering.model.Book;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class DatabaseManager {
	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://127.0.0.1:3306/online_book_order";
	private static final String user = "root";
	private static final String password = "137993";

	private Connection conn;

	public DatabaseManager() {
		try {
			Class.forName(driver);
			conn = (Connection) DriverManager
					.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// add book to database;
	public void addBook(Book book) {
		try {
			String id = (String) book.getId();
			String title = (String) book.getTitle();
			String author = (String) book.getAuthor();
			float price = (float) book.getPrice();

			Statement stat = (Statement) conn.createStatement();
			String sql = "insert into book (id, title, author, price)"
					+ " values (" + "'" + id + "'" + ", " + "'" + title + "'"
					+ ", " + "'" + author + "'" + ", " + "'" + price + "'"
					+ ")";
			System.out.println(sql);
			stat.executeUpdate(sql);

			/**
			 * while (rs.next()){ System.out.println(rs.getString(1) + "\t" +
			 * rs.getString(2)); } rs.close();
			 **/
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// delete book from database;
	public void delBook(Book book) {
		try {
			String id = (String) book.getId();
			/**
			 * String title = (String) book.getTitle(); String author = (String)
			 * book.getAuthor(); String price = (String) book.getPrice();
			 **/

			Statement stat = (Statement) conn.createStatement();
			String sql = "delete from book where id = " + "'" + id + "'";
			System.out.println(sql);
			stat.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// get admin's name and password from database;
	public boolean adminOrNot(Admin admin) {
		Statement stat = null;
		String name = admin.getName();
		String password = admin.getPassword();
		try {
			stat = (Statement) conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql = ("select * from admin");

		ResultSet rs = null;
		try {
			rs = stat.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			while (rs.next()) {
				String ad_name = rs.getString("name");
				String ad_password = rs.getString("password");

				if (name.equals(ad_name) && password.equals(ad_password)) {
					return true;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public String getAdminID(Admin admin) {
		String name = admin.getName();
		Statement stat = null;

		try {
			stat = (Statement) conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql = "select * from admin where name=" + "'" + name + "';";

		ResultSet rs = null;
		try {
			rs = stat.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String ad_ID = "";
		try {
			if (rs.next()) {
				ad_ID = rs.getString("id");
			} else {
				ad_ID = "Cannot find the result.";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ad_ID;
	}

	public ResultSet sqlQuery(String sql) {
		Statement stat = null;
		try {
			stat = (Statement) conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		ResultSet rs = null;
		try {
			rs = stat.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	public List<Book> bookList() throws SQLException {
		DatabaseManager dm = new DatabaseManager();
		String sql = "select * from book;";
		ResultSet rs = dm.sqlQuery(sql);
		/**
		 * int rowCount = 0; try { while (rs.next()) { rowCount++; } } catch
		 * (SQLException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 **/

		// System.out.println(rowCount);

		List<Book> bList = new ArrayList<Book>();

		while (rs.next()) {
			String bookId = rs.getString("id");
			String bookTitle = rs.getString("title");
			String bookAuthor = rs.getString("author");
			float bookPrice = rs.getFloat("price");
			int bookQuantity = rs.getInt("quantity");
			//System.out.println(bookTitle);
			Book b = new Book(bookId, bookTitle, bookAuthor, bookPrice,
					bookQuantity);
			bList.add(b);
		}
		return bList;
	}
}
