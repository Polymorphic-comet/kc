<%--
  Created by IntelliJ IDEA.
  User: KC
  Date: 2019\8\29 0029
  Time: 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
    <script>
        //使用XMLHTTPRequest发送请求
        //1、创建XMLHTTPRequest对象
        var xhr = new XMLHttpRequest();
        //2、注册onreadystatuschange事件
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                // alert(xhr.status);
                alert(xhr.responseText)
            }
        }

        //3、准备带给服务器端的数据
        //4、发送请求
        xhr.open("GET","/ajax_json/ajaxServlet?id=20",true);
        xhr.send(null);
    </script>
</head>
<body>
    <h1>Hello AJAX and JSON</h1>
</body>
</html>
