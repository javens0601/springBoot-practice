<%--
  Created by IntelliJ IDEA.
  User: jinweih
  Date: 2018/11/4
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String vale = request.getParameter("jav");
    out.print("<br/>" + vale);
%>
</body>
</html>
