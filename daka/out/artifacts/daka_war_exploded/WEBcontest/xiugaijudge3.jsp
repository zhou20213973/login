<%--
  Created by IntelliJ IDEA.
  User: 周佳琪
  Date: 2023/2/25
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<jsp:useBean id="test" class="test.Data" scope="page" />
<%
    String shijian=(String)session.getAttribute("shijian");
    String guanjianzi=(String)request.getParameter("guanjianzi");
    String zongjie=(String)request.getParameter("zongjie");
    String tianshu=(String)request.getParameter("tianshu");
    String shichang=(String)request.getParameter("shichang");
    if(guanjianzi==""||zongjie==""||tianshu==""||shichang=="")
    {
        out.print("<script language='javaScript'> alert('输入为空');window.history.back(-1);</script>");
    }
    else
    {
        test.revisedata(shijian,guanjianzi, zongjie, tianshu, shichang);
        out.print("<script language='javaScript'> alert('修改成功');</script>");
        response.setHeader("refresh", "0;url=show.jsp");
    }
%>
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <br> <input type="button" value="返回菜单" onclick="location.href='menu.jsp'" /> <br>
</p>
</body>
</html>
