package com.kc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "ShowTimeServlet",urlPatterns = "/showTimeServlet")
public class ShowTimeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        //获得系统当前时间
        PrintWriter out = response.getWriter();
        Date time = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
        out.println(sdf.format(time));
        System.out.println(sdf.format(time));
        out.close();
    }
}
