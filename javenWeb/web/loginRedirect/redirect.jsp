<%--
  Created by IntelliJ IDEA.
  User: jinweih
  Date: 2018/11/5
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");//解决post请求中文乱码问题
    String username = request.getParameter("user");
    String password = request.getParameter("passwd");
    if ("admin".equals(username) && "admin123".equals(password)) {
        request.getRequestDispatcher("success.jsp").forward(request, response);
        //response.sendRedirect("success.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>
