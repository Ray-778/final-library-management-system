package com.library.controller;

import com.library.pojo.Book;
import com.library.pojo.Lend;
import com.library.pojo.ReaderCard;
import com.library.service.BookService;
import com.library.service.LendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@Controller
public class LendController {
    @Autowired
    private LendService lendService;

    @Autowired
    private BookService bookService;


    @RequestMapping("/querylend.html")
    public ModelAndView queryBookDo(String searchWord) {
        if (lendService.matchBook(searchWord)) {
            ArrayList<Lend> books = lendService.queryBook(searchWord);
            ModelAndView modelAndView = new ModelAndView("admin_lend_list");
            modelAndView.addObject("list", books);
            return modelAndView;
        } else {
            return new ModelAndView("admin_lend_list", "error", "没有匹配的读者证号");
        }
    }

    @RequestMapping("/lendlist.html")
    public ModelAndView lendList(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("admin_lend_list");
        modelAndView.addObject("list", lendService.lendList());
        return modelAndView;
    }

    @RequestMapping("/mylend.html")
    public ModelAndView myLend(HttpServletRequest request) {
        ReaderCard readerCard = (ReaderCard) request.getSession().getAttribute("readercard");
        ModelAndView modelAndView = new ModelAndView("reader_lend_list");
        modelAndView.addObject("list", lendService.myLendList(readerCard.getReaderId()));
        return modelAndView;
    }

    @RequestMapping("/deletelend.html")
    public String deleteLend(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        long serNum = Long.parseLong(request.getParameter("serNum"));
        if (lendService.deleteLend(serNum) > 0) {
            redirectAttributes.addFlashAttribute("succ", "记录删除成功！");
        } else {
            redirectAttributes.addFlashAttribute("error", "记录删除失败！");
        }
        return "redirect:/lendlist.html";
    }

    @RequestMapping("/lendbook.html")
    public String bookLend(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        long bookId = Long.parseLong(request.getParameter("bookId"));
        long readerId = ((ReaderCard) request.getSession().getAttribute("readercard")).getReaderId();
        if (lendService.lendBook(bookId, readerId)) {
            redirectAttributes.addFlashAttribute("succ", "图书借阅成功！");
        } else {
            redirectAttributes.addFlashAttribute("succ", "图书借阅成功！");
        }
        return "redirect:/reader_books.html";
    }

    @RequestMapping("/returnbook.html")
    public String bookReturn(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        long bookId = Long.parseLong(request.getParameter("bookId"));
        long readerId = ((ReaderCard) request.getSession().getAttribute("readercard")).getReaderId();
        if (lendService.returnBook(bookId, readerId)) {
            redirectAttributes.addFlashAttribute("succ", "图书归还成功！");
        } else {
            redirectAttributes.addFlashAttribute("error", "图书归还失败！");
        }
        return "redirect:/reader_books.html";
    }
}
