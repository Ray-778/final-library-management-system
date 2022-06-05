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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class LendController {
    @Autowired
    private LendService lendService;

    @Autowired
    private BookService bookService;


    @RequestMapping("/admin_lendquery.html")
    public ModelAndView reader_adminQueryDo(String searchType, String searchWord) {
        if ("tsh".equals(searchType)) {
            return adminQueryBookDo(searchWord);
        }
        else {
            return adminQueryBookDo1(searchWord);
        }
    }

    public ModelAndView adminQueryBookDo(String searchWord) {
        if (lendService.matchBook(searchWord.trim())) {
            ArrayList<Lend> books = lendService.queryBook(searchWord.trim());
            //使用ModelAndView类用来存储处理完后的结果数据，以及显示该数据的视图
            ModelAndView modelAndView = new ModelAndView("admin_lend_list");
            modelAndView.addObject("list", books);
            return modelAndView;
        } else {
            return new ModelAndView("admin_lend_list", "error", "没有匹配的读者证号");
        }
    }


    public ModelAndView adminQueryBookDo1(String searchWord) {
        if (lendService.matchBook(searchWord.trim())) {
            ArrayList<Lend> books = lendService.queryBook1(searchWord.trim());
            //使用ModelAndView类用来存储处理完后的结果数据，以及显示该数据的视图
            ModelAndView modelAndView = new ModelAndView("admin_lend_list");
            modelAndView.addObject("list", books);
            return modelAndView;
        } else {
            return new ModelAndView("admin_lend_list", "error", "没有匹配的读者证号");
        }
    }
    @RequestMapping("/user_lendquery.html")
    public ModelAndView reader_userQueryDo(String searchType, String searchWord) {
        if ("tsh".equals(searchType)) {
            return userQueryBookDo(searchWord);
        }
        else {
            return userQueryBookDo1(searchWord);
        }
    }


    public ModelAndView userQueryBookDo(String searchWord) {
        if (lendService.matchBook(searchWord.trim())) {
            ArrayList<Lend> books = lendService.queryBook(searchWord.trim());
            //使用ModelAndView类用来存储处理完后的结果数据，以及显示该数据的视图
            ModelAndView modelAndView = new ModelAndView("user_lend_list");
            modelAndView.addObject("list", books);
            return modelAndView;
        } else {
            return new ModelAndView("user_lend_list", "error", "没有匹配的读者证号");
        }
    }


    public ModelAndView userQueryBookDo1(String searchWord) {
        if (lendService.matchBook(searchWord.trim())) {
            ArrayList<Lend> books = lendService.queryBook1(searchWord.trim());
            //使用ModelAndView类用来存储处理完后的结果数据，以及显示该数据的视图
            ModelAndView modelAndView = new ModelAndView("user_lend_list");
            modelAndView.addObject("list", books);
            return modelAndView;
        } else {
            return new ModelAndView("user_lend_list", "error", "没有匹配的读者证号");
        }
    }


 //初始日志界面
    @RequestMapping("/admin_lendlist.html")
    public ModelAndView adminLendList(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("admin_lend_list");
        modelAndView.addObject("list", lendService.lendList());
        return modelAndView;
    }

    //初始日志界面
    @RequestMapping("/user_lendlist.html")
    public ModelAndView userLendList(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("user_lend_list");
        modelAndView.addObject("list", lendService.lendList());
        return modelAndView;
    }
    @RequestMapping("/user_bookinfo.html")
    public ModelAndView userLendBookList(HttpServletRequest request) {
        List<Long>list1=new ArrayList();
        List<Long>list2=new ArrayList<>();
        for (Lend lend:lendService.lendList()) {
            list1.add(lend.getBookId());
        }
        for (int i = 0; i <list1.size() ; i++) {
            list2.add((long)Collections.frequency(list1,list1.get(i)));
        }
        int indexOfMaxElement = list2.indexOf(Collections.max(list2));
        Book book=bookService.getBook(list1.get(indexOfMaxElement));
        ModelAndView modelAndView = new ModelAndView("user_main");
        modelAndView.addObject("book", book);
        return modelAndView;
    }

    @RequestMapping("/mylend.html")
    //HttpServletRequest获取客户端的请求参数
    public ModelAndView myLend(HttpServletRequest request) {
        ReaderCard readerCard = (ReaderCard) request.getSession().getAttribute("readercard");
        ModelAndView modelAndView = new ModelAndView("reader_lend_list");
        modelAndView.addObject("list", lendService.myLendList(readerCard.getReaderId()));
        return modelAndView;
    }


    @RequestMapping("/reader_djs.html")
    public ModelAndView DJS(HttpServletRequest request) {
        ReaderCard readerCard = (ReaderCard) request.getSession().getAttribute("readercard");
        ModelAndView modelAndView = new ModelAndView("reader_main");
        lendService.lendDjs(readerCard.getReaderId());
        modelAndView.addObject("list", lendService.myLendList(readerCard.getReaderId()));
//        List<Lend>list=lendService.myLendList(readerCard.getReaderId());
//        for (Lend lend:list) {
//            if (lend.getBackDate()==null){
//                Date date=new Date();
//                lend.setDjs(getDaySub(date,lend.getDue_date()));
//                request.setAttribute("djs",lend.getDjs());
//            }
//        }
        return modelAndView;
    }
//    public static long getDaySub(Date beginDate, Date endDate) {
//
//        long day = 0;
//        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//        String beginDateStr=format.format(beginDate);
//        String endDateStr=format.format(endDate);
//        try {
//            beginDate = format.parse(beginDateStr);
//            endDate = format.parse(endDateStr);
//            day = (endDate.getTime()-beginDate.getTime())/(24*60*60*1000);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//        return day;
//    }

    @RequestMapping("/deletelend.html")
    public String deleteLend(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        long serNum = Long.parseLong(request.getParameter("serNum"));
        if (lendService.deleteLend(serNum) > 0) {
            //addFlashAttribute重新向带参，而且能隐藏参数，刷新后消失
            redirectAttributes.addFlashAttribute("succ", "记录删除成功！");
        } else {
            redirectAttributes.addFlashAttribute("error", "记录删除失败！");
        }
        return "redirect:/admin_lendlist.html";
    }

    @RequestMapping("/backbook.html")
    public String backbook(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        long serNum = Long.parseLong(request.getParameter("serNum"));
        if(lendService.backBook(serNum)>0){
            redirectAttributes.addFlashAttribute("succ","已成功向读者发送催还通知！！！");
        }else {
            redirectAttributes.addFlashAttribute("succ","向读者发送催还通知失败！！！");
        }
        return "redirect:/user_lendlist.html";
    }


    @RequestMapping("/lendbook.html")
    public String bookLend(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        long bookId = Long.parseLong(request.getParameter("bookId"));
        long readerId = ((ReaderCard) request.getSession().getAttribute("readercard")).getReaderId();

        if (lendService.lendBook(bookId, readerId)) {
            redirectAttributes.addFlashAttribute("succ", "图书借阅成功！");
        } else {
            redirectAttributes.addFlashAttribute("eeor", "图书借阅失败！");
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
