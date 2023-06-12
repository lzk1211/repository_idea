package com.qfedu.mapper.impl;

import com.qfedu.domain.Users;
import com.qfedu.mapper.UserMapper;
import com.qfedu.utils.Mybaits;

import java.util.List;

public class UserMapperImpl implements UserMapper {
    private UserMapper getmapper = Mybaits.getmapper(UserMapper.class);

    @Override
    public List<Users> getAll() {
        List<Users> all = getmapper.getAll();
        return all;
    }


}
