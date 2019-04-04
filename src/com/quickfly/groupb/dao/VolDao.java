package com.quickfly.groupb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.quickfly.groupb.metier.Vol;
import com.quickfly.groupb.reporitory.VolRepository;

public class VolDao implements VolRepository{
	
	private DaoFactory daofactory;

	public VolDao(DaoFactory daofactory) {
		super();
		this.daofactory = daofactory;
	}


	//@Override
	public ArrayList<Vol> rechercherVol(String villedep, String villearr, String datedep, double poids) {
		if(poids < 0)
		{
			RechercheSansPoids recherche = new RechercheSansPoids(daofactory);
			return recherche.RechercherVol(villedep, villearr, datedep, 0);
		}
		else
		{
			RechercheVolAvecPoids recherche = new RechercheVolAvecPoids(daofactory);
			return recherche.RechercherVol(villedep, villearr, datedep, poids);
		}
		
	}
	
	
	//@Override
	public ArrayList<Vol> listerVol() {
		Connection connexion = null;
		PreparedStatement preparedStatement= null;
		ResultSet resultSet = null;
		ArrayList<Vol> vols = new ArrayList<Vol>();
		Vol vol = new Vol();
		
		try {
			connexion = daofactory.getConnection();
			preparedStatement = connexion.prepareStatement("SELECT * FROM vol");
			resultSet = preparedStatement.executeQuery();
		    while(resultSet.next())
		      {
		    	vol.setCompagnie(resultSet.getString("compagnie"));
		    	vol.setId_vol(resultSet.getString("numvol"));
		    	vol.setDatedep(resultSet.getString("datedepart"));
		    	vol.setDatedep(resultSet.getString("datearrivee"));
		    	vol.setVilledep(resultSet.getString("villedepart"));
		    	vol.setVilledep(resultSet.getString("villearrivee"));
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
