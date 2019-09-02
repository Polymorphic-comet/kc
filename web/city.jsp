<%--
  Created by IntelliJ IDEA.
  User: KC
  Date: 2019\8\30 0030
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>城市</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
           $("select[name='province']").change(function () {
               $.ajax({
                  type:"POST",
                  url:"${pageContext.request.contextPath}/selectCityServlet",
                  data:"id="+this.selectedIndex,
                  dataType:"json",
                  success:function (result) {
                        $("select[name='city'] option").remove();
                        $.each(result,function (index,element) {
                           $("select[name='city']") .append("<option>"+ element + "</option>");
                        });
                  }
               });
           });
        });
    </script>
</head>
<body>
    <div align="center">
        <select name = "province">
            <option>江苏</option>
            <option>浙江</option>
            <option>上海</option>
        </select>省
        <select name = "city">
            <option>南京</option>
            <option>无锡</option>
            <option>徐州</option>
            <option>常州</option>
            <option>苏州</option>
            <option>南通</option>
            <option>连云港</option>
            <option>淮安</option>
            <option>盐城</option>
            <option>扬州</option>
            <option>镇江</option>
            <option>泰州</option>
            <option>宿迁</option>
        </select>市
    </div>
</body>
</html>
