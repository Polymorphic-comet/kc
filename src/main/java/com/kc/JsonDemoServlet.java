package com.kc;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "JsonDemoServlet",urlPatterns = "/jsonDemoServlet")
public class JsonDemoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String[] str = {"JSP","ASP","PHP"};
        ObjectMapper mapper = new ObjectMapper();
        //送给客户端的数据是JSON数组
//        out.print(mapper.writeValueAsString(str));
        //送给客户端的数据是JSON对象
        User user = new User(1,"Emy",27);
        //送给客户端的数据是List对象
        List<User> list = new ArrayList<User>();
        list.add(new User(0,"Emy",21));
        list.add(new User(1,"Karl",22));
        list.add(new User(3,"Comet",23));
        list.add(new User(4,"Alice",24));
        out.print(mapper.writeValueAsString(list));
        out.close();
    }
}
