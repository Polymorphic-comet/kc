<%--
  Created by IntelliJ IDEA.
  User: KC
  Date: 2019\8\29 0029
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AJAX</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script>
        $().ready(function () {
            $(":button").click(function () {
                //post方法发送请求带数据给数据
                //方法一：“名字1=值1&名字2=值2”
                //方法二：传js对象
                var user = {
                    "username":"Tom",
                    age:26
                }
                //方法三：通过表单的序列化方法
<%--                ${"form[name=myform]"}.serialize();--%>
               $.ajax({
                   type:"POST",
                   url:"${pageContext.request.contextPath}/ajax1Servlet",
                   data:$("form[name=myform]").serialize(),
                   success:function (msg) {
                       alert(msg);
                   }
               });
            });
        })
    </script>
</head>
<body>
    <div align="center">
        <form name="myform">
            用户名：<input type="text" name="username" /><br/>
            年&nbsp;&nbsp;&nbsp;&nbsp;龄：<input type="text" name="age" /><br/>
            <input type="button" value="TEST" />
        </form>
    </div>
</body>
</html>
