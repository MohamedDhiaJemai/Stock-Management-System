package connectionDB;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.net.Socket;
import java.sql.*;

public class ConnectionDB {
	
	static Connection connection;
    static String url= "jdbc:mysql://127.0.0.1/database";
     static String username="root";
     static String password="";
     
    public ConnectionDB() {}

	public ConnectionDB(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }

	public static Connection Connect() throws SQLException {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
            System.out.println("It's Ok");
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println(e);//
        }
        return connection;
        
    }

    public static Connection closeconnexion() {

        try {
            connection.close();
            System.out.println("It's Closed");
        } catch (Exception e) {
            System.out.println("Can not Connect !!!");
        	System.err.println(e);
            
        }
        return connection;
        
    }
}
