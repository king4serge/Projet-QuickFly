package com.quickfly.groupb.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.quickfly.groupb.metier.Vol;
import com.quickfly.groupb.reporitory.StrategieRecherche;

public class RechercheSansPoids implements StrategieRecherche {
	private DaoFactory daofactory;
	
	public RechercheSansPoids(DaoFactory daofactory) {
		super();
		this.daofactory = daofactory;
	}


	public RechercheSansPoids() {
		super();
		// TODO Auto-generated constructor stub
	}



	public ArrayList<Vol> RechercherVol(String villedep, String villearr, String datedep, double poids) {
		
		Connection connexion = null;
		PreparedStatement preparedStatement= null;
		ResultSet resultSet = null;
		ArrayList<Vol> vols = new ArrayList<Vol>();
		Vol vol = new Vol();
		
		try {
			connexion = daofactory.getConnection();
			preparedStatement = connexion.prepareStatement("SELECT * FROM vol where villeDepart =? and villearrivee =? and datedepart=?");
			preparedStatement.setString(1, villedep);
			preparedStatement.setString(2, villearr);
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(datedep);
			java.sql.Date datesql = new java.sql.Date(date.getTime());
			preparedStatement.setDate(3, datesql);
			resultSet = preparedStatement.executeQuery();
		    while(resultSet.next())
		      {
		    	vol.setCompagnie(resultSet.getString("compagnie"));
		    	vol.setId_vol(resultSet.getString("numvol"));
		    	vol.setDatedep(resultSet.getString("datedepart"));
		    	vol.setDatedep(resultSet.getString("datearrivee"));
		      }
		    vols.add(vol);
		    resultSet.close();
		    preparedStatement.close();
		      }
		catch (Exception e) {
			e.printStackTrace();
		}
		return vols;
}

}