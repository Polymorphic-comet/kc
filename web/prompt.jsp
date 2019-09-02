<%--
  Created by IntelliJ IDEA.
  User: KC
  Date: 2019\8\29 0029
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>提示</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
           $(":text[name=username]").keyup(function () {
              $.ajax({
                  type:"POST",
                  url:"${pageContext.request.contextPath}/promptServlet",
                  data:"username="+this.value,
                  success:function (result) {
                      var strArr = result.split(",");
                      $("select option").remove();
                      $.each(strArr,function(index,value){
                          $("datalist").append("<option>" + value + "</option>");
                      })
                  }
              });
           });
        });
    </script>
</head>
<body>
    <div align="center">
        请输入：<input type="text" name="username" list="lio"/>
        <datalist id="lio" name="lio"></datalist>
    </div>
</body>
</html>
