package com.quickfly.groupb.dao;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.quickfly.groupb.reporitory.ClientRepository;

public class ClientDao implements ClientRepository{
	private DaoFactory daofactory;

	public ClientDao(DaoFactory daofactory) {
		super();
		this.daofactory = daofactory;
	}

	//@Override
	public String seconnecter(String login, String pwd) {
		Connection connexion = null;
		PreparedStatement preparedStatement= null, preparedStatement1= null;
		String pass = null;
		
		ResultSet resultSet = null, resultSet1 = null;
		
		try {
			connexion = daofactory.getConnection();
			preparedStatement = connexion.prepareStatement("SELECT * FROM account;");
			resultSet = preparedStatement.executeQuery();
			byte[] passw = pwd.getBytes();
			MessageDigest md;
			try {
				md = MessageDigest.getInstance("MD5");
				byte[] crypt = md.digest(passw);
				StringBuilder sb = new StringBuilder(2*crypt.length);
				for(byte b : crypt)
				{
					sb.append(String.format("%02x", b&0xff));
				}
				pass = sb.toString();
				while(resultSet.next())
				{
					if(login.equals(resultSet.getString("login")) && pass .equals(resultSet.getString("passwd"))){
						preparedStatement1 = connexion.prepareStatement("SELECT statut FROM utilisateurs where id_user=?;");
						preparedStatement1.setInt(1, resultSet.getInt("proprietaire"));
						resultSet1 = preparedStatement1.executeQuery();
						while(resultSet1.next())
						{
							return resultSet1.getString("statut");
						}	
					}
				}	
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}finally {
			try {
				if(resultSet!=null)
					resultSet.close();
				if(preparedStatement!=null)
					preparedStatement.close();
				if(resultSet1!=null)
					resultSet1.close();
				if(preparedStatement1!=null)
					preparedStatement1.close();
				if(connexion!=null)
					connexion.close();
			}catch(SQLException ignore) {}
		}
	return "non";
	}

	//@Override
	public boolean sedeconnecter() {
		// TODO Auto-generated method stub
		return false;
	}

	//@Override
	public boolean sinscrire(String nom,String prenom,String ville,String pays,String tel,String login,String password) {
		String statut ="client";
		Connection connexion = null;
		PreparedStatement preparedStatement= null;
		PreparedStatement preparedStatement1= null, preparedStatement2= null;
		byte[] passw = password.getBytes();
		String pass = null;
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("MD5");
			byte[] crypt = md.digest(passw);
			StringBuilder sb = new StringBuilder(2*crypt.length);
			for(byte b : crypt)
			{
				sb.append(String.format("%02x", b&0xff));
			}
			pass = sb.toString();
		} catch (NoSuchAlgorithmException e1) {
			e1.printStackTrace();
		}
		ResultSet resultSet = null;
		try {
			int id = 0;
			connexion = daofactory.getConnection();
			
			preparedStatement = connexion.prepareStatement("Insert into utilisateurs (nom,prenoms,ville, pays,tel,statut) values(?,?,?,?,?,?)");
			preparedStatement.setString(1, nom);
			preparedStatement.setString(2, prenom);
			preparedStatement.setString(3, ville);
			preparedStatement.setString(4, pays);
			preparedStatement.setString(5, tel);
			preparedStatement.setString(6, statut);
			preparedStatement.execute();
			
			preparedStatement1 = connexion.prepareStatement("SELECT id_user from utilisateurs where nom =? and prenoms =?");
			preparedStatement1.setString(1, nom);
			preparedStatement1.setString(2, prenom);
			resultSet = preparedStatement1.executeQuery();
		    while(resultSet.next())
		      {
		    	id = resultSet.getInt("id_user");
		      }
		    preparedStatement2 = connexion.prepareStatement("Insert into account (login,passwd,proprietaire) values(?,?,?)");
			preparedStatement2.setString(1, login);
			preparedStatement2.setString(2, pass);
			preparedStatement2.setInt(3,id);
			preparedStatement2.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
	}finally {
			try {
				if(resultSet!=null)
					resultSet.close();
				if(preparedStatement!=null)
					preparedStatement.close();
				if(preparedStatement1!=null)
					preparedStatement1.close();
				if(preparedStatement2!=null)
					preparedStatement2.close();
				if(connexion!=null)
					connexion.close();
			}catch(SQLException ignore) {}
		}
		
		return true;
	}
}
