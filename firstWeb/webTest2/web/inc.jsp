<%--
  Created by IntelliJ IDEA.
  User: jinweih
  Date: 2018/11/4
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>这个是被包含页面</h1>
<%
    String javen = request.getParameter("javen");
    String nanshen = request.getParameter("nanshen");
    out.print("<br/>" + javen);
    out.print("<br/>" + nanshen);
%>
</body>
</html>
