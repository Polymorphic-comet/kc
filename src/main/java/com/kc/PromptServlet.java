package com.kc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PromptServlet",urlPatterns = "/promptServlet")
public class PromptServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String[] arr = {
                "Anna","Brittany","Cinderella","Diana",
                "Eva","Fiona","Gunda","Hege","Inga","Johanna",
                "Kitty","Linda","Nina","Ophelia","Petunia","Amanda",
                "Raquel","Cindy","Doris","Eve","Evita","Sunniva",
                "Tove","Unni","Violet","Liza","Elizabeth","Ellen",
                "Wenche","Vicky"
        };
        //获得客户端传来的数据
        String username = request.getParameter("username");
        System.out.println("username = " + username);
        String result = "";
        for (String s : arr) {
            boolean flag = s.toLowerCase().startsWith(username.toLowerCase());
            if (flag)
                result += s +",";
        }
        if (result.lastIndexOf(',') != -1)
            result = result.substring(0,result.length()-1);


        //从名字库中找与相关的名字
        //将这些相关名字传给客户端
        PrintWriter out = response.getWriter();
        out.print(result);
        System.out.println("result = " + result);
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
