//package util;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//
//public class DAO {
//    private static final String DB_CLASS = "com.mysql.cj.jdbc.Driver";
//    private static final String DB_URL = "jdbc:mysql://localhost:3306/cineman";
//    private static final String DB_USER = "root";
//    private static final String DB_PASS = "hang572003";
//
//    protected Connection getConnection() {
//        Connection con = null;
//        try {
//            Class.forName(DB_CLASS);
//            con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
//        } catch (ClassNotFoundException e) {
//            System.err.println("Driver không tìm thấy: " + e.getMessage());
//        } catch (SQLException e) {
//            System.err.println("Lỗi kết nối cơ sở dữ liệu: " + e.getMessage());
//        }
//        return con;
//    }
//}


package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
    protected Connection con;

    public DAO() {
        String DB_CLASS = "com.mysql.cj.jdbc.Driver";
        String DB_URL = "jdbc:mysql://localhost:3306/cineman";
        String DB_USER = "root";
        String DB_PASS = "hang572003";
        try {
            Class.forName(DB_CLASS);
            con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
        } catch (ClassNotFoundException e) {
            System.err.println("Driver không tìm thấy: " + e.getMessage());
        } catch (SQLException e) {
            System.err.println("Lỗi kết nối cơ sở dữ liệu: " + e.getMessage());
        }
    }

    public void closeConnection() {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                System.err.println("Lỗi khi đóng kết nối: " + e.getMessage());
            }
        }
    }
}
