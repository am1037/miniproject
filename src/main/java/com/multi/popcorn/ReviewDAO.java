package com.multi.popcorn;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class ReviewDAO {
    @Autowired
    SqlSessionTemplate my;

    public ReviewVO one(int id){
        return my.selectOne("rm.one", id);
    }

    public List<ReviewVO> selectFromTo(int min, int max){
        Map<String, Integer> ids = new HashMap<>();
        ids.put("min", min);
        ids.put("max", max);
        System.out.println(ids);
        return my.selectList("rm.fromTo", ids);
    }

}
