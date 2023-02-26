<%--
  Created by IntelliJ IDEA.
  User: 周佳琪
  Date: 2023/2/20
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>浏览信息</title>
</head>
<body>


<jsp:useBean id="test" class="test.Data" scope="page" />
<table border="1"style="text-align:center;">
  <tr>
    <td align="center" width=10%>日期</td>
    <td align="center" width=10%>每日关键字</td>
    <td align="center" width=10%>每日总结</td>
    <td align="center" width=10%>坚持天数</td>
    <td align="center" width=10%>连续最高时长</td>
  </tr>
  <%
    Connection connection = test.getConnection();
    PreparedStatement preparedStatement=null;
    ResultSet rs=null;
    try {
      String sql = "select * from test";
      preparedStatement=connection.prepareStatement(sql);
      rs=preparedStatement.executeQuery();
      while(rs.next()){
  %>
  <tr>
    <td align="center"><%=rs.getObject(1) %></td>
    <td align="center"><%=rs.getObject(2) %></td>
    <td align="center"><%=rs.getObject(3) %></td>
    <td align="center"><%=rs.getObject(4) %></td>
    <td align="center"><%=rs.getObject(5) %></td>
  </tr>
  <%
      }
    } catch (SQLException  e) {
      e.printStackTrace();
    }finally{
      test.close(rs);
      test.close(preparedStatement);
      test.close(connection);
    }
  %>
</table>
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
  <input type="button" value="返回菜单" onclick="location.href='menu.jsp'" /> <br>
</p>
</body>
</html>
