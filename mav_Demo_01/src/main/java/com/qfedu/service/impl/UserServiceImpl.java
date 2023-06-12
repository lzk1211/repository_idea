package com.qfedu.service.impl;

import com.qfedu.domain.Users;
import com.qfedu.mapper.UserMapper;
import com.qfedu.mapper.impl.UserMapperImpl;
import com.qfedu.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    private UserMapper um = new UserMapperImpl();
    @Override
    public List<Users> getAll() {

        List<Users> all = um.getAll();
        return all;
    }
}




