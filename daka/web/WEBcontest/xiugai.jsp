<%--
  Created by IntelliJ IDEA.
  User: 周佳琪
  Date: 2023/2/25
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@page import="test.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改</title>
</head>
<body>
<form action="xiugaijudge.jsp" method="get">
    <p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
        <br> 输入要修改的日期 <input type="text" name="shijian" /><br>
        <br><input type="submit" value="提交" />
        <input type="reset" value="重置" />  <br>
        <br> <input type="button" value="返回菜单" onclick="location.href='menu.jsp'" /> <br>
    </p>
</form>
</body>
</html>
