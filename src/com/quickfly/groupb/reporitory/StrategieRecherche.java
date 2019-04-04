package com.quickfly.groupb.reporitory;

import java.util.ArrayList;

import com.quickfly.groupb.metier.Vol;

public interface StrategieRecherche {
	public ArrayList<Vol> RechercherVol(String villedep, String villearr, String datedep ,double poids);
}
