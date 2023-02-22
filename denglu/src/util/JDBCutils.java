package util;

import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.Properties;

/*
JDBC工具类
 */
public class JDBCutils {
    private  static String url;
    private  static String user;
    private  static String password;
    private  static String driver;
    /**
     *文件的读取，只需要读取一次即可拿到这些值。使用静态代码块
     */
    static{
        //读取资源文件，获取值


        try {
            //1.创建Properties集合类。
            Properties pro = new Properties();

            //获取src路劲瞎的文件方式--->ClassLoader 类加载器
            ClassLoader classLoader = JDBCutils.class.getClassLoader();
            URL res = classLoader.getResource("JDBC.properties");
            String path = res.getPath();
            System.out.println(path);
            //2.加载文件。
           // pro.load(new FileReader("E:\\denglu\\src\\JDBC.properties"));
            pro.load(new FileReader(path));
            //3.获取属性，赋值
            url = pro.getProperty("url");
            user = pro.getProperty("user");
            password = pro.getProperty("password");
            driver = pro.getProperty("driver");
            //4.注册驱动
            try {
                Class.forName(driver);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }



    /*
    *获取链接
    * 返回链接对象
     */
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url,user,password);

    }
/*
*释放资源
*
 */
    public static void close(Statement stmt,Connection conn){
        if(stmt !=null){
            try {
                stmt.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        if (conn != null){
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

    }
    /*
     *释放资源
     *
     */
    public static void close(ResultSet rs,Statement stmt, Connection conn){
        if(stmt !=null){
            try {
                stmt.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        if (conn != null){
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        if(rs !=null){
            try {
                rs.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

    }
}
