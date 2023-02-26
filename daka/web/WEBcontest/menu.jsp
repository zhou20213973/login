<%--
  Created by IntelliJ IDEA.
  User: 周佳琪
  Date: 2023/2/26
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>主菜单</title>
</head>
<form action="addInput.jsp" method="get">
    <p style="text-align:center;color:white;font-family:宋体; font-size:20px">
        增删改查

        <br> 选择功能： <input type="button" value="信息登记" onclick="location.href='fabu.jsp'" />
        <input type="button" value="信息删除" onclick="location.href='shanchu.jsp'" />
        <input type="button" value="信息修改" onclick="location.href='xiugai.jsp'" />
        <input type="button" value="查询信息" onclick="location.href='search.jsp'" />
        <input type="button" value="浏览信息" onclick="location.href='show.jsp'" />
        <br>
    </p>

</form>
</body>

</html>
