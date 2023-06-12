package com.qfedu.mapper;

import com.qfedu.domain.Users;

import com.qfedu.utils.Mybaits;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class UserMapperTest {

    @Test
    public void getAll() {

        UserMapper getmapper = Mybaits.getmapper(UserMapper.class);
        List<Users> users = getmapper.getAll();
        for (Users user : users) {
            System.out.println(user);
        }
    }
}