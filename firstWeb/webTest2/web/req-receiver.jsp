<%
    String user = request.getParameter("user");
    String pwd = request.getParameter("pwd");
    if ("javen".equalsIgnoreCase(user) && "123456".equals(pwd)) {
        out.print("<h2>Success</h2>");
    } else {
        out.print("error");
    }
%>