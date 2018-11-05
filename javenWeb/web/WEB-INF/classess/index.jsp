<%--
  Created by IntelliJ IDEA.
  User: jinweih
  Date: 2018/11/5
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DCITS启动列表</title>
</head>
<body bgcolor="#9acd32" background="img/Desert.jpg"
      style=" background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed">
<i>
    <h2 align="center">DCITS启动访问列表</h2>
</i><br/>
<%--<h4>test</h4>--%>
<form action="loginRedirect/redirect.jsp" align="center" method="post">
    <%--
    &emsp;  一个空白
    &ensp;  半个空白
    --%>
    用户名:&ensp;<input type="text" name="user" required="true"/><br/><br/>
    密&emsp;码:&ensp;<input type="password" name="passwd" required="true"/><br/><br/>
    <input type="submit" value="登录"/>&emsp;&emsp;
    <%--<input type="button" value="注销"/>--%>
</form>

</body>
</html>
