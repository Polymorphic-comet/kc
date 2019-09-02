package com.kc;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SelectCityServlet",urlPatterns = "/selectCityServlet")
public class SelectCityServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        //获得省份的id
        int id = Integer.parseInt(request.getParameter("id"));
        //获得省份对应的城市
        String[][] arr = {
                {"南京","无锡","徐州","常州","苏州","南通","连云港","淮安","盐城","扬州","镇江","泰州","宿迁"},
                {"杭州","湖州","绍兴","宁波","嘉兴","丽水","台州","温州","金华","衢州","舟山"},
                {"黄浦","徐汇","长宁","静安","普陀","虹口","杨浦","闵行","宝山","嘉定","浦东","金山","松江", "青浦",
                        "奉贤","崇明"}
        };
        //将这个数组===>JSON字符串
        ObjectMapper mapper = new ObjectMapper();
        String str = mapper.writeValueAsString(arr[id]);
        PrintWriter out = response.getWriter();
        out.print(str);
        out.close();
        //将该字符串送给客户端
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
