<%--
  Created by IntelliJ IDEA.
  User: KC
  Date: 2019\8\29 0029
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JQuery Test</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $().ready(function () {
            $(":button").click(function () {
                $.ajax({
                    type:"POST",
                    url:"/ajax_json/ajaxServlet?id=50",
                    data:"{name:spring,age:22}",
                    success:function(msg){
                        alert("Data Saved:" + msg);
                    }
                });
            });

            $(":input[name=username]").keyup(function () {
                $.ajax({
                    type:"GET",
                    url:"/ajax_json/showTimeServlet",
                    success:function(msg){
                        $(":input[name=currentTime]").val(msg);
                    }
                });
            });
        });
        // var obj = {"name":"spring","age":24};
        // alert("name = " + obj.name + ",age = " + obj.age)
    </script>
</head>
<body>

    <div align="center">
        用户：<input type="text" name="username" value="" size="18px" /><br/>
        时间：<input type="text" name="currentTime" value="" size="18px" id="currentTime"/><br/>
        <input type="button" value="点击">
    </div>
</body>
</html>
