package com.qfedu.domain;

import lombok.Data;

import java.util.List;

@Data
public class Users {
    private int uid;
    private String name;
    private String pass;
    private int age;
    private String tel;
    private String addr;
    private List<Orders> orders;
}
