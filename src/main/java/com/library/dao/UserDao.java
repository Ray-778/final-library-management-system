package com.library.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Repository
public class UserDao {
    private final static String NAMESPACE = "com.library.dao.UserDao.";
    @Resource
    private SqlSessionTemplate sqlSessionTemplate;

    public int getMatchCount(final long user_id, final String password) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("user_id", user_id);
        paramMap.put("password", password);
        return sqlSessionTemplate.selectOne(NAMESPACE + "getMatchCount", paramMap);
    }

    public int resetPassword(final long user_id, final String password) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("user_id", user_id);
        paramMap.put("password", password);
        return sqlSessionTemplate.update(NAMESPACE + "resetPassword", paramMap);
    }

    public String getPassword(final long user_id) {
        return sqlSessionTemplate.selectOne(NAMESPACE + "getPassword", user_id);
    }

    public String getUsername(final long user_id) {
        return sqlSessionTemplate.selectOne(NAMESPACE + "getUsername", user_id);
    }

}
