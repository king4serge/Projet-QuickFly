package com.quickfly.groupb.reporitory;

import java.util.ArrayList;

import com.quickfly.groupb.metier.Vol;

public interface VolRepository {
	public ArrayList<Vol> listerVol();
	public ArrayList<Vol> rechercherVol(String villedep, String villearr, String datedep, double poids);
}
