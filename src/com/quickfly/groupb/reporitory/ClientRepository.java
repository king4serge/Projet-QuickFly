package com.quickfly.groupb.reporitory;

import java.util.ArrayList;

import com.quickfly.groupb.metier.Client;

public interface ClientRepository {
	/*public boolean update(String nom,String prenom,String ville,String pays,String tel,String login,String password);
	public ArrayList<Client>select(String login, String pwd);
	public boolean delete(String login, String pwd);*/
	public String seconnecter(String login, String pwd);
	public boolean sedeconnecter();
	public boolean sinscrire(String nom,String prenom,String ville,String pays,String tel,String login,String password);

}
