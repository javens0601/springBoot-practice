<%@ page import="java.util.Random" %>
<%@ page import="java.util.Date" %>

<%--
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
    int num = new Random().nextInt(100);
    out.print("<nume>" + num + "</nume>");
%>
<form name=clock>
    <input name=thetime style="font-size: 9pt;color:#000000;border:0" size=100>
</form>
<br/>
<jsp:include page="inc.jsp">
    <jsp:param name="javen" value="JAVEN"/>
    <jsp:param name="nanshen" value="SHAOSHUAI"/>
</jsp:include>
<h3>请求转发</h3>
<br/>
<form action="recevice.jsp">
    <input type="text" name="jav"/><br/><br/>
    <input type="submit" value="提交"/>
</form>
<h2>request内置对象，登录</h2>
<form action="req-receiver.jsp" method="post">
    用户名 : <input type="text" name="user"/><br/>
    密码 :   <input type="password" name="pwd"/><br/>
    <input type="submit" value="登录"/>
</form>
</body>

<script language="javascript">

    function realSysTime(clock) {
        var now = new Date();            //创建Date对象
        var year = now.getFullYear();    //获取年份
        var month = now.getMonth();    //获取月份
        var date = now.getDate();        //获取日期
        var day = now.getDay();        //获取星期
        var hour = now.getHours();    //获取小时
        var minu = now.getMinutes();    //获取分钟
        var sec = now.getSeconds();    //获取秒钟
        month = month + 1;
        var arr_week = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
        var week = arr_week[day];        //获取中文的星期
        var time = year + "年" + month + "月" + date + "日 " + week + " " + hour + ":" + minu + ":" + sec;    //组合系统时间
        clock.innerHTML = time;    //显示系统时间
    }

    window.onload = function () {
        window.setInterval("realSysTime(clock)", 1000);    //实时获取并显示系统时间
    }
</script>
</html>
