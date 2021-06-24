package com.library.service;

import com.library.pojo.Book;
import com.library.dao.BookDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class BookService {
    @Autowired
    private BookDao bookDao;

    public ArrayList<Book> queryBook(String searchWord) {
        return bookDao.queryBook(searchWord);
    }
    public ArrayList<Book> queryBook1(String searchWord) {
        return bookDao.queryBook1(searchWord);
    }

    public ArrayList<Book> queryBook3(String searchWord) {
        return bookDao.queryBook3(searchWord);
    }
    public ArrayList<Book> queryBook4(String searchWord) {
        return bookDao.queryBook4(searchWord);
    }
    public ArrayList<Book> queryBook5(String searchWord) {
        return bookDao.queryBook5(searchWord);
    }
    public ArrayList<Book> getAllBooks() {
        return bookDao.getAllBooks();
    }

    public boolean matchBook(String searchWord) {
        return bookDao.matchBook(searchWord) > 0;
    }

    public boolean addBook(Book book) {
        return bookDao.addBook(book) > 0;
    }

    public Book getBook(Long bookId) {
        return bookDao.getBook(bookId);
    }

    public boolean editBook(Book book) {
        return bookDao.editBook(book) > 0;
    }

    public boolean deleteBook(Long bookId) {
        return bookDao.deleteBook(bookId) > 0;
    }

}
