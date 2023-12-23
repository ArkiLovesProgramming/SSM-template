package com.arki.service;

import com.arki.dao.BookMapper;
import com.arki.pojo.Book;

import java.util.ArrayList;

public class BookServiceImpl implements BookService{
    private BookMapper bookMapper;
    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public ArrayList<Book> getBooks() {
        return bookMapper.getBooks();
    }

    @Override
    public int addBook(Book book) {
        return bookMapper.addBook(book);
    }
}
