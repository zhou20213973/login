package Login;

import util.JDBCutils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class login {
    public boolean login(String username,String password){
        if(username == null||password == null){
            return  false;
        }
        //链接数据库判断是否登录成功
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        //1.获取链接
        try {
            conn = JDBCutils.getConnection();
            //2.定义sql
            String sql = "select * from test3 where username = '"+username+"'and password = '"+password+"'";

            //3.获取执行sql的对象
            stmt = conn.createStatement();
            //4.执行查询
            rs = stmt.executeQuery(sql);

            //5.判断
            return rs.next();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JDBCutils.close(rs,stmt,conn);
        }


        return false;
    }

}
