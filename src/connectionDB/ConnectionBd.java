package connectionDB;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.*;

public class ConnectionBd {

    public static Connection Connect() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/database", "root", "");
             return con;
        } catch (ClassNotFoundException e) {
            System.out.println("erreur" + e);
            return null;
        }
    }
}
