<%--
  Created by IntelliJ IDEA.
  User: 周佳琪
  Date: 2023/2/26
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>查询</title>
</head>
<body>
<form action="searchjudge.jsp" method="get">
    <p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
        输入要查询信息的时间(支持模糊查询)：
        <br> <input type="text" name="data" /> <br>
        <br><input type="submit" value="提交" />
        <input type="reset" value="重置" />  <br>
        <br> <input type="button" value="返回菜单" onclick="location.href='menu.jsp'" /> <br>
    </p>
</form>
</body>
</html>
