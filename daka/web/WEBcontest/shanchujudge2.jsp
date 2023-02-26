<%--
  Created by IntelliJ IDEA.
  User: 周佳琪
  Date: 2023/2/23
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="test.Data"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<input type="button" onclick="openResult()" value="删除"/>
<jsp:useBean id="test" class="test.Data" scope="page" />
<%
    String shijian=(String)request.getParameter("shijian");
    test.deletedata(shijian);
    out.print("<script language='javaScript'> alert('删除成功');</script>");
    response.setHeader("refresh", "0;url=shanchu.jsp");
%>
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <br> <input type="button" value="返回菜单" onclick="location.href='menu.jsp'" /> <br>
</p>
</body>
</html>
