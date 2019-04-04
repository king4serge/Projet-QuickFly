package com.quickfly.groupb.metier;


public class Vol{
	private String id_vol;
	private String compagnie;
	private String datedep;
	private String datearr;
	private String villedep;
	private String villearr;



	public Vol() {
		super();
	}

	public Vol(String Id_vol, String compagnie,  String datedep, String datearr, String villedep, String villearr) {
		super();
		this.id_vol = Id_vol;
		this.compagnie = compagnie;
		this.datedep = datedep;
		this.datearr = datearr;
		this.villedep = villedep;
		this.villearr = villearr;
	}

	public String getCompagnie() {
		return compagnie;
	}


	public void setCompagnie(String compagnie) {
		this.compagnie = compagnie;
	}


	public  String getDatedep() {
		return datedep;
	}


	public void setDatedep( String datedep) {
		this.datedep = datedep;
	}


	public  String getDatearr() {
		return datearr;
	}


	public void setDatearr( String datearr) {
		this.datearr = datearr;
	}


	public String getVilledep() {
		return villedep;
	}


	public void setVilledep(String villedep) {
		this.villedep = villedep;
	}


	public String getVillearr() {
		return villearr;
	}


	public void setVillearr(String villearr) {
		this.villearr = villearr;
	}


	public String getId_vol() {
		return id_vol;
	}

	public void setId_vol(String id_vol) {
		this.id_vol = id_vol;
	}
}
