package com.pierangelo.demo.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pierangelo.demo.demo.model.Book;
import com.pierangelo.demo.demo.service.BookService;

@Controller
public class DemoController {
	
	@Autowired
	private BookService bookService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		return mav;
	};
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public ModelAndView test() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		List<Book> books = bookService.getAll();
		mav.addObject("libri", books);
		return mav;
	}
}
