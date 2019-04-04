package com.quickfly.groupb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.quickfly.groupb.reporitory.ClientRepository;
import com.quickfly.groupb.reporitory.VolRepository;

public class DaoFactory {
	private String url;
	private String username;
	private String password;

	public DaoFactory(String url, String username, String password) {
		super();
		this.url = url;
		this.username = username;
		this.password = password;
	}

	public static DaoFactory getInstance() {
		try {
			Class.forName("org.postgresql.Driver");
		}catch(ClassNotFoundException e) {};
		
		DaoFactory instance = new DaoFactory("jdbc:postgresql://localhost:5432/projet","postgres","serge");
		return instance;
				
		}

	public Connection getConnection() throws SQLException{
		return DriverManager.getConnection(url,username,password);
	}

	//Recupération du dao
	public ClientRepository getClientRepository() {
		return new ClientDao(this);
	}
	
	public VolRepository getVolRepository() {
		return new VolDao(this);
	}

}
