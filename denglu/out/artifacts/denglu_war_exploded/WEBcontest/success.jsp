<%@ page import="util.JDBCutils" %><%--
  Created by IntelliJ IDEA.
  User: 周佳琪
  Date: 2023/2/19
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>登录中</title>
</head>
<body>
<jsp:useBean id="util" class="Login.login" scope="page" />
<%
    String username =(String)request.getParameter("username");
    String password = (String) request.getParameter("password");
    if(util.login(username,password)){
        //登录成功
        out.print("<script language='javaScript'> alert('登录成功');</script>");
        response.setHeader("refresh", "0;url=people.jsp");
    }else{
        out.print("<script language='javaScript'> alert('账户或密码错误');window.history.back(-1);</script>");
    }

%>

</body>
</html>
