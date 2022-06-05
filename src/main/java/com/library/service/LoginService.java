package com.library.service;

import com.library.dao.UserDao;
import com.library.pojo.ReaderCard;
import com.library.dao.AdminDao;
import com.library.dao.ReaderCardDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    @Autowired
    private ReaderCardDao readerCardDao;
    @Autowired
    private AdminDao adminDao;
    @Autowired
    private UserDao userDao;

    public boolean hasMatchReader(long readerId,String password){
        return  readerCardDao.getIdMatchCount(readerId, password)>0;
    }

    public String getAdminUsername(long adminId) {
        return adminDao.getUsername(adminId);
    }

    public String getUsername(long userId) {
        return userDao.getUsername(userId);
    }

    public ReaderCard findReaderCardByReaderId(long readerId){
        return readerCardDao.findReaderByReaderId(readerId);
    }

    public boolean hasMatchAdmin(long adminId,String password){
        return adminDao.getMatchCount(adminId, password) == 1;
    }

    public boolean adminRePassword(long adminId, String newPassword){
        return adminDao.resetPassword(adminId,newPassword)>0;
    }
    public String getAdminPassword(long adminId){
        return adminDao.getPassword(adminId);
    }

    public boolean hasMatchUser(long userId,String password){
        return userDao.getMatchCount(userId, password) == 1;
    }

    public boolean userRePassword(long userId, String newPassword){
        return userDao.resetPassword(userId,newPassword)>0;
    }
    public String getUserPassword(long userId){
        return userDao.getPassword(userId);
    }

    public boolean readerRePassword(long readerId, String newPassword) {
        return readerCardDao.resetPassword(readerId, newPassword) > 0;
    }

    public String getReaderPassword(long readerId) {
        return readerCardDao.getPassword(readerId);
    }


}
