package com.ix_edtech;

import java.sql.*;

import static com.ix_edtech.DB_info.*;

public class DB_con {
    private static Connection con = null;
    
    public DB_con() {}

    static {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, uname, pwd);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Connection getCon() {
        return con;
    }

//    public static ResultSet getData() throws SQLException {
//        Statement stmt = con.createStatement();
//        String query = "select * from employee01";
//        return stmt.executeQuery(query);
//    }
}
