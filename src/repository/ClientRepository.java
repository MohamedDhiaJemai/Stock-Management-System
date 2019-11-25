package repository;

import java.util.ArrayList;

import Entities.Client;


public interface ClientRepository {
	
	public void addClient(Client c);
	public void deleteClient(int id);
	public Client modifierClient(Client c, String id);
	public ArrayList<Client> allClient();
	public Client consulterClient(String id);
	
}
