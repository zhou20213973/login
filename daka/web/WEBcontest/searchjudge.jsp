<%--
  Created by IntelliJ IDEA.
  User: 周佳琪
  Date: 2023/2/26
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.sql.*"  contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>查询</title>
</head>
<body style="text-align:center">
查询结果
<p>
    <jsp:useBean id="test" class="test.Data" scope="page" />
        <%
String data=(String)request.getParameter("data");
if(data==""){
    out.print("<script language='javaScript'> alert('输入为空'); window.history.back(-1); </script>");
}
else
{
    %>
<table border="1"style="text-align:center;">
    <tr>
        <td align="center" width=6%>时间</td>
        <td align="center" width=3%>每日关键字</td>
        <td align="center" width=10>每日总结</td>
        <td align="center" width=10%>坚持天数</td>
    </tr>
    <%
        int i=0;
        Connection connection = test.getConnection();
        PreparedStatement preparedStatement=null;
        ResultSet rs=null;
        try {
            String sql= " select * from test where shijian like ? or guanjianzi like ?  ";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,"%"+data+"%");
            preparedStatement.setString(2,"%"+data+"%");
            rs=preparedStatement.executeQuery();
            while(rs.next())
            {
                i++;
    %>
    <tr>
        <td align="center"><a style="color:blue" href='searchshowall.jsp?shijian=<%=rs.getObject(1) %>'><%=rs.getObject(1) %></a> </td>
        <td align="center"><%=rs.getObject(2) %></td>
        <td align="center"><%=rs.getObject(3) %></td>
        <td align="center"><%=rs.getObject(4) %></td>
    </tr>
    <%
                }
                if(i==0)
                {
                    out.print("<script language='javaScript'> alert('没有查询到有关信息'); window.history.back(-1); </script>");
                }
            } catch (SQLException  e) {
                e.printStackTrace();
            }finally{
                test.close(rs);
                test.close(preparedStatement);
                test.close(connection);
            }
        }
    %>
</table>

<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <br> <input type="button" value="返回菜单" onclick="location.href='menu.jsp'" /> <br>
</p>
</body>
</html>
