package com.library.service;

import com.library.dao.LendDao;
import com.library.pojo.Lend;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class LendService {
    @Autowired
    private LendDao lendDao;


    public ArrayList<Lend> queryBook(String searchWord) {
        return lendDao.queryBook(searchWord);
    }
    public ArrayList<Lend> queryBook1(String searchWord) {
        return lendDao.queryBook1(searchWord);
    }

    public boolean matchBook(String searchWord) {
        return lendDao.matchBook(searchWord) > 0;
    }

    public boolean returnBook(long bookId, long readerId){
        return lendDao.returnBookOne(bookId, readerId)>0 && lendDao.returnBookTwo(bookId)>0;
    }

    public boolean lendBook(long bookId,long readerId){
        return lendDao.lendBookOne(bookId,readerId)>0 && lendDao.lendBookTwo(bookId)>0;
    }

    public int lendDjs(long readerId){
        return lendDao.lendDjs(readerId);
    }
    public int backBook(long serNum){
        return lendDao.backBook(serNum);
    }
    public ArrayList<Lend> lendList(){
        return lendDao.lendList();
    }
    public ArrayList<Lend> myLendList(long readerId){
        return lendDao.myLendList(readerId);
    }

    public int deleteLend(long serNum) {
        return lendDao.deleteLend(serNum);
    }

}
