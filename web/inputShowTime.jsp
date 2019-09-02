<%--
  Created by IntelliJ IDEA.
  User: KC
  Date: 2019\8\29 0029
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>输入用户显示时间</title>
    <script>
        function show() {
            //使用AJAX发送一个请求，获得服务器的系统时间，将这个时间放在输入框中
            //1、创建XMLHttpRequest对象
            var xhr = new XMLHttpRequest();
            //2、注册onreadystatuschange事件
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4) {
                    document.getElementById("currentTime").value=xhr.responseText;
                    // alert(xhr.responseText);
                    // document.getElementsByName("currentTime")[0].value = xhr.responseText;
                }

            }
            //3、
            //4、发送请求
            xhr.open("GET","/ajax_json/showTimeServlet",true);
            xhr.send(null);
        }
    </script>
</head>
<body>
    <div align="center">
        用户：<input type="text" name="username" value="" size="18px" onkeyup="show()" /><br/>
        时间：<input type="text" name="currentTime" value="" size="18px" id="currentTime"/>
    </div>

</body>
</html>
