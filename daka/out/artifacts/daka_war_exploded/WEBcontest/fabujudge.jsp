<%--
  Created by IntelliJ IDEA.
  User: 周佳琪
  Date: 2022/10/28
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
<jsp:useBean id="test" class="test.Data" scope="page" />
<%
    String shijian=(String)request.getParameter("shijian");
    String guanjianzi=(String)request.getParameter("guanjianzi");
    String zongjie=(String)request.getParameter("zongjie");
    String tianshu=(String)request.getParameter("tianshu");
    String shichang=(String)request.getParameter("shichang");
        test.adddata(shijian, guanjianzi, zongjie, tianshu, shichang);
        out.print("<script language='javaScript'> alert('添加成功');</script>");
        response.setHeader("refresh", "0;url=show.jsp");


%>
</body>
</html>
