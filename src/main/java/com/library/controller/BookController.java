package com.library.controller;

import com.library.pojo.Book;
import com.library.pojo.Lend;
import com.library.pojo.ReaderCard;
import com.library.service.BookService;
import com.library.service.LendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

@Controller
public class BookController {
    @Autowired
    private BookService bookService;
    @Autowired
    private LendService lendService;

    private Date getDate(String pubstr) {
        try {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            return df.parse(pubstr);
        } catch (ParseException e) {
            e.printStackTrace();
            return new Date();
        }
    }

    @RequestMapping("/deletebook.html")
    public String deleteBook(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        long bookId = Long.parseLong(request.getParameter("bookId"));
        if (bookService.deleteBook(bookId)) {
            redirectAttributes.addFlashAttribute("succ", "图书删除成功！");
        } else {
            redirectAttributes.addFlashAttribute("error", "图书删除失败！");
        }
        return "redirect:/admin_books.html";
}


    @RequestMapping("/admin_query.html")
    public ModelAndView adminQueryDo(String searchType, String searchWord) {
        if ("tsmc".equals(searchType)) {
            return adminQueryBookDo1(searchWord);
        }else if ("tszz".equals(searchType)){
            return adminQueryBookDo3(searchWord);
        }else if ("tsisbn".equals(searchType)){
            return adminQueryBookDo4(searchWord);
        }else if ("tslx".equals(searchType)){
            return adminQueryBookDo5(searchWord);
        }
        else {
            return adminQueryBookDo(searchWord);
        }
    }


    @RequestMapping("/admin_querybook.html")
    public ModelAndView adminQueryBookDo(String searchWord) {
        if (bookService.matchBook(searchWord.trim())) {
            ArrayList<Book> books = bookService.queryBook(searchWord.trim());
            ModelAndView modelAndView = new ModelAndView("admin_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("admin_books", "error", "没有匹配的图书");
        }
    }

    @RequestMapping("/admin_querybook1.html")
    public ModelAndView adminQueryBookDo1(String searchWord) {
        if (bookService.matchBook(searchWord.trim())) {
            ArrayList<Book> books = bookService.queryBook1(searchWord.trim());
            ModelAndView modelAndView = new ModelAndView("admin_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("admin_books", "error", "没有匹配的图书");
        }
    }

    @RequestMapping("/admin_querybook3.html")
    public ModelAndView adminQueryBookDo3(String searchWord) {
        if (bookService.matchBook(searchWord.trim())) {
            ArrayList<Book> books = bookService.queryBook3(searchWord.trim());
            ModelAndView modelAndView = new ModelAndView("admin_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("admin_books", "error", "没有匹配的图书");
        }
    }


    @RequestMapping("/admin_querybook4.html")
    public ModelAndView adminQueryBookDo4(String searchWord) {
        if (bookService.matchBook(searchWord.trim())) {
            ArrayList<Book> books = bookService.queryBook4(searchWord.trim());
            ModelAndView modelAndView = new ModelAndView("admin_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("admin_books", "error", "没有匹配的图书");
        }
    }

    @RequestMapping("/admin_querybook5.html")
    public ModelAndView adminQueryBookDo5(String searchWord) {
        if (bookService.matchBook(searchWord.trim())) {
            ArrayList<Book> books = bookService.queryBook5(searchWord.trim());
            ModelAndView modelAndView = new ModelAndView("admin_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("admin_books", "error", "没有匹配的图书");
        }
    }

    @RequestMapping("/user_query.html")
    public ModelAndView userQueryDo(String searchType, String searchWord) {
        if ("tsmc".equals(searchType)) {
            return userQueryBookDo1(searchWord);
        }else if ("tszz".equals(searchType)){
            return userQueryBookDo3(searchWord);
        }else if ("tsisbn".equals(searchType)){
            return userQueryBookDo4(searchWord);
        }else if ("tslx".equals(searchType)){
            return userQueryBookDo5(searchWord);
        }
        else {
            return userQueryBookDo(searchWord);
        }
    }


    @RequestMapping("/user_querybook.html")
    public ModelAndView userQueryBookDo(String searchWord) {
        if (bookService.matchBook(searchWord.trim())) {
            ArrayList<Book> books = bookService.queryBook(searchWord.trim());
            ModelAndView modelAndView = new ModelAndView("user_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("user_books", "error", "没有匹配的图书");
        }
    }

    @RequestMapping("/user_querybook1.html")
    public ModelAndView userQueryBookDo1(String searchWord) {
        if (bookService.matchBook(searchWord.trim())) {
            ArrayList<Book> books = bookService.queryBook1(searchWord.trim());
            ModelAndView modelAndView = new ModelAndView("user_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("user_books", "error", "没有匹配的图书");
        }
    }




    @RequestMapping("/user_querybook3.html")
    public ModelAndView userQueryBookDo3(String searchWord) {
        if (bookService.matchBook(searchWord.trim())) {
            ArrayList<Book> books = bookService.queryBook3(searchWord.trim());
            ModelAndView modelAndView = new ModelAndView("user_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("user_books", "error", "没有匹配的图书");
        }
    }


    @RequestMapping("/user_querybook4.html")
    public ModelAndView userQueryBookDo4(String searchWord) {
        if (bookService.matchBook(searchWord.trim())) {
            ArrayList<Book> books = bookService.queryBook4(searchWord.trim());
            ModelAndView modelAndView = new ModelAndView("user_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("user_books", "error", "没有匹配的图书");
        }
    }

    @RequestMapping("/user_querybook5.html")
    public ModelAndView userQueryBookDo5(String searchWord) {
        if (bookService.matchBook(searchWord.trim())) {
            ArrayList<Book> books = bookService.queryBook5(searchWord.trim());
            ModelAndView modelAndView = new ModelAndView("user_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("user_books", "error", "没有匹配的图书");
        }
    }


    @RequestMapping("/readerquery.html")
    public ModelAndView reader_queryDo(String searchType, String searchWord) {
        if ("tsmc".equals(searchType)) {
            return readerQueryBookDo1(searchWord);
        }else if ("tszz".equals(searchType)){
            return readerQueryBookDo2(searchWord);
        }else if ("tsisbn".equals(searchType)){
            return readerQueryBookDo3(searchWord);
        }else if ("tslx".equals(searchType)){
            return readerQueryBookDo4(searchWord);
        }
        else {
            return readerQueryBookDo(searchWord);
        }
    }

    @RequestMapping("/reader_querybook_do.html")
    public ModelAndView readerQueryBookDo(String searchWord) {
        if (bookService.matchBook(searchWord)) {
            ArrayList<Book> books = bookService.queryBook(searchWord);
            ModelAndView modelAndView = new ModelAndView("reader_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("reader_books", "error", "没有匹配的图书");
        }
    }


    @RequestMapping("/reader_querybook_do1.html")
    public ModelAndView readerQueryBookDo1(String searchWord) {
        if (bookService.matchBook(searchWord)) {
            ArrayList<Book> books = bookService.queryBook1(searchWord);
            ModelAndView modelAndView = new ModelAndView("reader_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("reader_books", "error", "没有匹配的图书");
        }
    }

    @RequestMapping("/reader_querybook_do2.html")
    public ModelAndView readerQueryBookDo2(String searchWord) {
        if (bookService.matchBook(searchWord)) {
            ArrayList<Book> books = bookService.queryBook3(searchWord);
            ModelAndView modelAndView = new ModelAndView("reader_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("reader_books", "error", "没有匹配的图书");
        }
    }

    @RequestMapping("/reader_querybook_do3.html")
    public ModelAndView readerQueryBookDo3(String searchWord) {
        if (bookService.matchBook(searchWord)) {
            ArrayList<Book> books = bookService.queryBook4(searchWord);
            ModelAndView modelAndView = new ModelAndView("reader_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("reader_books", "error", "没有匹配的图书");
        }
    }


    @RequestMapping("/reader_querybook_do4.html")
    public ModelAndView readerQueryBookDo4(String searchWord) {
        if (bookService.matchBook(searchWord)) {
            ArrayList<Book> books = bookService.queryBook5(searchWord);
            ModelAndView modelAndView = new ModelAndView("reader_books");
            modelAndView.addObject("books", books);
            return modelAndView;
        } else {
            return new ModelAndView("reader_books", "error", "没有匹配的图书");
        }
    }



    @RequestMapping("/admin_books.html")
    public ModelAndView adminBooks() {
        ArrayList<Book> books = bookService.getAllBooks();
        ModelAndView modelAndView = new ModelAndView("admin_books");
        modelAndView.addObject("books", books);
        return modelAndView;
    }

    @RequestMapping("/user_books.html")
    public ModelAndView userBooks() {
        ArrayList<Book> books = bookService.getAllBooks();
        ModelAndView modelAndView = new ModelAndView("user_books");
        modelAndView.addObject("books", books);
        return modelAndView;
    }

    @RequestMapping("/book_add.html")
    public ModelAndView addBook() {
        return new ModelAndView("admin_book_add");
    }

    @RequestMapping("/book_add_do.html")
    public String addBookDo(@RequestParam(value = "pubstr") String pubstr, Book book, RedirectAttributes redirectAttributes) {
        book.setPubdate(getDate(pubstr));
        if (bookService.addBook(book)) {
            redirectAttributes.addFlashAttribute("succ", "图书添加成功！");
        } else {
            redirectAttributes.addFlashAttribute("succ", "图书添加失败！");
        }
        return "redirect:/admin_books.html";
    }

    @RequestMapping("/updatebook.html")
    public ModelAndView bookEdit(HttpServletRequest request) {
        long bookId = Long.parseLong(request.getParameter("bookId"));
        Book book = bookService.getBook(bookId);
        ModelAndView modelAndView = new ModelAndView("admin_book_edit");
        modelAndView.addObject("detail", book);
        return modelAndView;
    }

    @RequestMapping("/book_edit_do.html")
    public String bookEditDo(@RequestParam(value = "pubstr") String pubstr, Book book, RedirectAttributes redirectAttributes) {
        book.setPubdate(getDate(pubstr));
        if (bookService.editBook(book)) {
            redirectAttributes.addFlashAttribute("succ", "图书修改成功！");
        } else {
            redirectAttributes.addFlashAttribute("error", "图书修改失败！");
        }
        return "redirect:/admin_books.html";
    }

    @RequestMapping("/admin_book_detail.html")
    public ModelAndView adminBookDetail(HttpServletRequest request) {
        long bookId = Long.parseLong(request.getParameter("bookId"));
        Book book = bookService.getBook(bookId);
        ModelAndView modelAndView = new ModelAndView("admin_book_detail");
        modelAndView.addObject("detail", book);
        return modelAndView;
    }

    @RequestMapping("/user_book_detail.html")
    public ModelAndView userBookDetail(HttpServletRequest request) {
        long bookId = Long.parseLong(request.getParameter("bookId"));
        Book book = bookService.getBook(bookId);
        ModelAndView modelAndView = new ModelAndView("user_book_detail");
        modelAndView.addObject("detail", book);
        return modelAndView;
    }

    @RequestMapping("/reader_book_detail.html")
    public ModelAndView readerBookDetail(HttpServletRequest request) {
        long bookId = Long.parseLong(request.getParameter("bookId"));
        Book book = bookService.getBook(bookId);
        ModelAndView modelAndView = new ModelAndView("reader_book_detail");
        modelAndView.addObject("detail", book);
        return modelAndView;
    }

    @RequestMapping("/admin_header.html")
    public ModelAndView admin_header() {
        return new ModelAndView("admin_header");
    }

    @RequestMapping("/user_header.html")
    public ModelAndView user_header() {
        return new ModelAndView("user_header");
    }

    @RequestMapping("/reader_header.html")
    public ModelAndView reader_header() {
        return new ModelAndView("reader_header");
    }

    @RequestMapping("/reader_books.html")
    public ModelAndView readerBooks(HttpServletRequest request) {
        ArrayList<Book> books = bookService.getAllBooks();
        ReaderCard readerCard = (ReaderCard) request.getSession().getAttribute("readercard");
        ArrayList<Lend> myAllLendList = lendService.myLendList(readerCard.getReaderId());
        ArrayList<Long> myLendList = new ArrayList<>();
        for (Lend lend : myAllLendList) {
            // 是否已归还
            if (lend.getBackDate() == null) {
                myLendList.add(lend.getBookId());
            }
        }
        ModelAndView modelAndView = new ModelAndView("reader_books");
        //分部显示
        modelAndView.addObject("books", books);
        modelAndView.addObject("myLendList", myLendList);
        return modelAndView;
    }
}
