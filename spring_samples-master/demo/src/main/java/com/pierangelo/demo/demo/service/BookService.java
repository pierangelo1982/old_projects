package com.pierangelo.demo.demo.service;

import java.util.List;

import com.pierangelo.demo.demo.model.Book;


public interface BookService {
	
	public void saveBook(Book b);
	
	public List<Book> getAll();

}
