package main;

import java.sql.SQLException;

import connectionDB.ConnectionDB;
import services.ClientImplement;

public class StockManagementSystem {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		ConnectionDB.Connect();
		
		ClientImplement ci = new ClientImplement();
		//Client c = new Client();
		
		System.out.println(ci.allClient());
	}

}
