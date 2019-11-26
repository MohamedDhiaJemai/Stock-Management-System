package services;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import Entities.Client;
import repository.ClientRepository;

public class ClientImplement implements ClientRepository {
	
	Connection conn = null;
	Statement st = null;
	//For executeQuerry
	ResultSet rs = null;
	
	
    public ClientImplement() {
		// TODO Auto-generated constructor stub
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/database", "root", "");
            st = conn.createStatement();
        } catch (SQLException e1) {
            System.out.println("errreur" + e1);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ClientImplement.class.getName()).log(Level.SEVERE, null, ex);
        }
	}

    

	@Override
	public void addClient(Entities.Client c) {
		// TODO Auto-generated method stub
		System.out.println("add method");
		String requete;
		try {
			System.out.println("add method");
			requete = "insert into CLIENT values (" + c.getIdClient() + ",'" + c.getAdresseClient() + "','"
					+ c.getCodeTVA() + "','" + c.getEmail() + "','" + c.getTelephone() + "','" + c.getFax() + "', '"
					+ c.getRaisonSociale() + "')";
			System.out.println("add method");
			st.executeUpdate(requete);
			System.out.println("Client Is Added");
		} catch (SQLException e) {
			// TODO: handle exception
			System.err.print(e);
		}
	}

	@Override
	public void deleteClient(int id) {
		// TODO Auto-generated method stub
		String sql="";
		try {
			sql = "DELETE FROM client where idclient = " + id + "";
			st.executeUpdate(sql);
		} catch (SQLException e) {
			System.err.println(e);
		}
	}

	@Override
	public Entities.Client modifierClient(Entities.Client c, String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Entities.Client> allClient() {
		String sql="";
		try {
			sql = "SELECT * FROM client";
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			System.err.println(e);
		}
		ArrayList<Client> ClientList = new ArrayList<>();
		try {
			while (rs.next()) {
				ClientList.add(
						new Client(
								rs.getInt("idclient"),
								rs.getString("Code_tva"),
								rs.getString("Adresse"),
								rs.getString("email"),
								rs.getString("telephone"),
								rs.getString("fax"),
								rs.getString("raison_sociale")
								)
						);
			}

			rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return ClientList;
		
		
	}

	@Override
	public String consulterClient(int i) {
		// TODO Auto-generated method stub
		
		String sql="";
		Client c = null;
		try {
			sql = "SELECT * FROM client WHERE idclient="+i;
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			System.err.println(e);
		}
		try {
			while (rs.next()) {
			c = new Client(
						rs.getInt("idclient"),
						rs.getString("Code_tva"),
						rs.getString("Adresse"),
						rs.getString("email"),
						rs.getString("telephone"),
						rs.getString("fax"),
						rs.getString("raison_sociale")
						);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c.toString() ;
	}

}
