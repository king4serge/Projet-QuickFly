package com.quickfly.groupb.metier;

public class Client{
	private int Id_client;
	private String nom;
	private String prenom;
	private int age;
	private String ville;
	private String pays;
	
	public Client() {}

	public Client(int Id_client, String nom, String prenom,int age, String ville, String pays) {
		this.Id_client = Id_client;
		this.nom = nom;
		this.prenom = prenom;
		this.age = age;
		this.ville = ville;
		this.pays = pays;
	}

	public int getId_client() {
		return Id_client;
	}

	public void setId_client(int Id_client) {
		this.Id_client = Id_client;
	}
	

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getPays() {
		return pays;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

}