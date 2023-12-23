package com.arki.controller;


import com.arki.pojo.Book;
import com.arki.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
@RequestMapping("/book")
public class BookController {
    private BookService bookService;
    @Autowired
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping("/books")
    public String getBooks(Model model){
        ArrayList<Book> books = bookService.getBooks();
        System.out.println(books);
        model.addAttribute("books", books);
        return "display";
    }

    //to add book
    @RequestMapping("/toAddBook")
    public String toAddBook(){
        return "addbook";
    }

    //add book
    @RequestMapping("/addBook")
    public String addBook(Book book){
        bookService.addBook(book);
        return "redirect:/book/books";
    }
}
