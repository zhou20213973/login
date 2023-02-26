package test;

import java.sql.*;

public class Data {
    public String shijian, guanjianzi, zongjie, tiansshu, shichang;

    public String getTime() {
        return shijian;
    }

    public void setTime(String time) {
        this.shijian = time;
    }

    public String getGuanjianzi() {
        return guanjianzi;
    }

    public void setGuanjianzi(String guanjianzi) {
        this.guanjianzi = guanjianzi;
    }

    public String getZongjie() {
        return zongjie;
    }

    public void setZongjie(String zongjie) {
        this.zongjie = zongjie;
    }

    public String getTiansshu() {
        return tiansshu;
    }

    public void setTiansshu(String tiansshu) {
        this.tiansshu = tiansshu;
    }

    public String getShichang() {
        return shichang;
    }

    public void setShichang(String shichang) {
        this.shichang = shichang;
    }


    public Connection getConnection()//连接数据库
    {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            //System.out.println("加载驱动成功");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String user = "root";
        String password = "zhoujiaqi123";
        String url = "jdbc:mysql://localhost:3306/db3?useSSL=false&serverTimezone=GMT&characterEncoding=utf-8&autoReconnect=true";
        Connection con = null;
        try {
            con = DriverManager.getConnection(url, user, password);
            //System.out.println("数据库连接成功");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    //**********************************************************************
    //关闭方法
    public void close(Connection con) {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void close(PreparedStatement preparedStatement) {
        try {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void close(ResultSet resultSet) {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//增
    public void adddata(String shijian, String guanjianzi, String zongjie, String tianshu, String shichang) {
        Connection connection = getConnection();
        PreparedStatement preparedStatement = null;
        try {
            String sql = "insert into test (shijian ,guanjianzi ,zongjie , tianshu ,shichang ) values (?,?,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, shijian);
            preparedStatement.setString(2, guanjianzi);
            preparedStatement.setString(3, zongjie);
            preparedStatement.setString(4, tianshu);
            preparedStatement.setString(5, shichang);
            preparedStatement.executeUpdate();
            System.out.println("添加成功");

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(preparedStatement);
            close(connection);
        }

    }

//删
    public void deletedata(String shijian) {
        Connection connection = getConnection();
        PreparedStatement preparedStatement = null;
        try {
            String sql = "delete from test where shijian = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, shijian);
            preparedStatement.executeUpdate();
            //System.out.println("删除成功");

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(preparedStatement);
            close(connection);
        }
    }

    //改
    public void revisedata(String shijian, String guanjianzi, String zongjie, String tianshu, String shichang) {
        Connection connection = getConnection();
        PreparedStatement preparedStatement = null;
        try {
            String sql = "update test set guanjianzi=?, zongjie=?, tianshu=?, shichang=? where shijian=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, guanjianzi);
            preparedStatement.setString(2, zongjie);
            preparedStatement.setString(3, tianshu);
            preparedStatement.setString(4, shichang);
            preparedStatement.setString(5, shijian);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(preparedStatement);
            close(connection);
        }

    }


    //判重/判存在
    public boolean isSame(String s1) {
        Connection connection = getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        try {
            String sql = "select * from test";
            preparedStatement = connection.prepareStatement(sql);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                if (s1.equals(rs.getObject(1)) || s1.equals(rs.getObject(2)))
                    return true;
            }
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(rs);
            close(preparedStatement);
            close(connection);
        }
        return false;
    }
}

