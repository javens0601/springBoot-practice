<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: javen
  Date: 2018/11/1
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>hello</title>
  </head>
  <body>
hello wold
  <%
    String text = "<h2>javen test</h2>";
    int num = new Random().nextInt();
    out.print(text);
    out.print("<nume>" +num + "</nume>");
    out.print("<br/>");
  %>
<%=new java.util.Date()%>
  </body>
</html>
