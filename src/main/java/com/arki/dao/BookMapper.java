package com.arki.dao;

import com.arki.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface BookMapper {
    ArrayList<Book> getBooks();
    int addBook(Book book);
}
