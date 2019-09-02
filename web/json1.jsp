<%--
  Created by IntelliJ IDEA.
  User: KC
  Date: 2019\8\30 0030
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSON1</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script>
        $(function () {
           $("input").click(function () {
               // alert("OK");
               $.ajax({
                   type:"POST",
                   url:"${pageContext.request.contextPath}/jsonDemoServlet",
                   asyn:true,
                   dataType:"json",
                   success:function (result) {
                       //数组，对象，集合
                       // alert(result);
                       // alert(result[1] + "," + result.length);
                       // alert(result.id + "," + result.name + "," + result.age).
                       alert(result[1].id + "," + result[1].name + "," + result[1].age)
                   }
               });
           });
        });
    </script>
</head>
<body>
    <input type="button" value="测试" />
</body>
</html>
