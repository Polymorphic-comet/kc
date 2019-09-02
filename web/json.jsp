<%--
  Created by IntelliJ IDEA.
  User: KC
  Date: 2019\8\30 0030
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSON</title>
    <script>
        var arr = ["JSP","ASP","PHP"];
        //转化为JSON(JSON)
        var str = JSON.stringify(arr);
        console.log("str = " + str + "," + typeof (str));
        var str = '["JSP","ASP","PHP","Matble"]';
        //将符合JSON格式的字符串转换成数组
        var arr = JSON.parse(str);
        console.log("arr = " + arr + "," + typeof (arr));

        var obj = {name:"TOM",age:24};
        //对象 ===> JSON
        str = JSON.stringify(obj);
        console.log("str = " + str);
        //JSON ===> 对象
        str = '{"name":"TOM","age":24}';
        obj = JSON.parse(str);
        console.log("name = " + obj.name + ",age = " + obj.age)
    </script>
</head>
<body>

</body>
</html>
