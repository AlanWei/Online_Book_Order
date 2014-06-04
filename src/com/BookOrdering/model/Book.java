package com.BookOrdering.model;

import com.BookOrdering.db.*;

public class Book {
	private String id;
	private String title;
	private String author;
	private String price;

	public String getId() {
		return id;
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

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	public static void main(String args[]){
		Book book = new Book();
		book.setId("7");
		book.setTitle("Testbook2");
		book.setAuthor("Ben");
		book.setPrice("10.0");
		DatabasaManager dm = new DatabasaManager();
		//dm.addBook(book);
		//dm.delBook(book);
		
		Admin admin = new Admin("admin1", "123456");
		
		if (dm.adminOrNot(admin)){
			System.out.println("Yes, he is the admin.");
		} else {
			System.out.println("Sry, he is not the admin.");
		}
	}
	

}
