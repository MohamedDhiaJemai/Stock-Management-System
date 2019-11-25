package Entities;

public class Client {
	
	private int idClient;
	private String codeTVA;
	private String adresseClient;
	private String email;
	private String telephone;
	private String fax;
	private String raisonSociale;
	
	public Client() {
	}
	
	public Client(int idClient, String codeTVA, String adresseClient, String email, String telephone, String fax,
			String raisonSociale) {
		super();
		this.idClient = idClient;
		this.codeTVA = codeTVA;
		this.adresseClient = adresseClient;
		this.email = email;
		this.telephone = telephone;
		this.fax = fax;
		this.raisonSociale = raisonSociale;
	}

	public int getIdClient() {
		return idClient;
	}

	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}

	public String getCodeTVA() {
		return codeTVA;
	}

	public void setCodeTVA(String codeTVA) {
		this.codeTVA = codeTVA;
	}

	public String getAdresseClient() {
		return adresseClient;
	}

	public void setAdresseClient(String adresseClient) {
		this.adresseClient = adresseClient;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getRaisonSociale() {
		return raisonSociale;
	}

	public void setRaisonSociale(String raisonSociale) {
		this.raisonSociale = raisonSociale;
	}
	
	

}
