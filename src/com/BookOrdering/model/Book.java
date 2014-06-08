package com.BookOrdering.model;

import java.sql.SQLException;
import java.util.List;

import com.BookOrdering.db.*;

public class Book {
	private String id;
	private String title;
	private String author;
	private float price;
	private int quantity;
	

	public Book(String id, String title, String author, float price, int quantity ){
		this.id = id;
		this.title = title;
		this.author = author;
		this.price = price;
		this.quantity = quantity;
	}

	public String getId() {
		return id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
	
	public static void main(String args[]) throws SQLException{
		DatabaseManager dm = new DatabaseManager();
		List<Book> bl = dm.bookList();
		for (int i=0; i<bl.size(); i++){
			String bookTitle = bl.get(i).getTitle();
			System.out.println(bookTitle);
		}
	}
}
