<%--
  Created by IntelliJ IDEA.
  User: 周佳琪
  Date: 2023/2/20
  Time: 17:58
  To change this template use File | Settings | File Templates.
--%>
<%@page import="test.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>登记</title>
</head>
<body>
<form action="fabujudge.jsp" method="get">
  <p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <br>
    <br>日期 <input type="text" name="shijian" size="20" />
    <br>每日关键字 <input type="text" name="guanjianzi" size="15"  >
    <br>每日总结<input type="text" name="zongjie" size="15"  >
    <br>坚持天数 <input type="text" name="tianshu" size="10"  ><br>
    <br>连续最高时长 <input type="text" name="shichang" size="20"  >
    <br><input type="submit" value="提交" />
    <input type="reset" value="重置" />  <br>
    <br> <input type="button" value="返回菜单" onclick="location.href='menu.jsp'" /> <br>
  </p>
  </p>
</form>
</body>
</html>