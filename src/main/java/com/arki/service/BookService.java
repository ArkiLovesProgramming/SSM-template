package com.arki.service;

import com.arki.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface BookService {
    ArrayList<Book> getBooks();
    int addBook(Book book);
}
