package com.pierangelo.demo.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pierangelo.demo.demo.model.Book;

@Repository("bookRepository")
public interface BookRepository extends JpaRepository<Book, Integer>{
	
}
