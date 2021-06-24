package com.library.dao;

import com.library.pojo.Lend;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class LendDao {

    @Resource
    private SqlSessionTemplate sqlSessionTemplate;

    private final static String NAMESPACE = "com.library.dao.LendDao.";

    public int matchBook(final String searchWord) {
        String search = searchWord;
        return sqlSessionTemplate.selectOne(NAMESPACE + "matchBook", search);
    }

    public ArrayList<Lend> queryBook(final String searchWord) {
        String search = searchWord;
        List<Lend> result = sqlSessionTemplate.selectList(NAMESPACE + "queryBook", search);
        return (ArrayList<Lend>) result;
    }
    public ArrayList<Lend> queryBook1(final String searchWord) {
        String search = searchWord;
        List<Lend> result = sqlSessionTemplate.selectList(NAMESPACE + "queryBook1", search);
        return (ArrayList<Lend>) result;
    }

    public int returnBookOne(final long book_id, long reader_id) {
        Map<String, Object> map = new HashMap<>();
        map.put("book_id", book_id);
        map.put("reader_id", reader_id);
        return sqlSessionTemplate.update(NAMESPACE + "returnBookOne", map);
    }

    public int returnBookTwo(final long book_id) {
        return sqlSessionTemplate.update(NAMESPACE + "returnBookTwo", book_id);
    }

    public int lendBookOne(final long book_id, final long reader_id) {
        Map<String, Object> map = new HashMap<>();
        //获取 Map 集合的所有键名 名  值对象
        map.put("book_id", book_id);
        map.put("reader_id", reader_id);
        return sqlSessionTemplate.insert(NAMESPACE + "lendBookOne", map);
    }

    public int lendBookTwo(final long book_id) {
        return sqlSessionTemplate.update(NAMESPACE + "lendBookTwo", book_id);
    }

    public ArrayList<Lend> lendList() {
        List<Lend> result = sqlSessionTemplate.selectList(NAMESPACE + "lendList");
        return (ArrayList<Lend>) result;
    }

    public ArrayList<Lend> myLendList(final long reader_id) {
        List<Lend> result = sqlSessionTemplate.selectList(NAMESPACE + "myLendList", reader_id);
        return (ArrayList<Lend>) result;
    }

    public int deleteLend(final long ser_num) {
        return sqlSessionTemplate.delete(NAMESPACE + "deleteLend", ser_num);
    }
}
