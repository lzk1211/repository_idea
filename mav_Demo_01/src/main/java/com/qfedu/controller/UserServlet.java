package com.qfedu.controller;

import com.qfedu.domain.Users;
import com.qfedu.service.UserService;
import com.qfedu.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends BaseServlet {

    private UserService us = new UserServiceImpl();
    protected void getAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Users> users = us.getAll();
        request.setAttribute("users",users);
        request.getRequestDispatcher("/users.jsp").forward(request,response);

    }

}
