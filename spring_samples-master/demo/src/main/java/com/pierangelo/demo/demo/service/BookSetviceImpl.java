package com.pierangelo.demo.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pierangelo.demo.demo.model.Book;
import com.pierangelo.demo.demo.repository.BookRepository;

@Service("bookService")
public class BookSetviceImpl implements BookService {
	
	@Autowired
	private BookRepository bookRepository;
	
	@Override
	public void saveBook(Book b) {
		bookRepository.save(b);

	}

	@Override
	public List<Book> getAll() {
		// TODO Auto-generated method stub
		return bookRepository.findAll();
	}

}
