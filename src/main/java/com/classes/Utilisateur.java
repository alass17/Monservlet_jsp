package com.classes;

public class Utilisateur{
	private String nom;
	private String prenom;
	private String pseudo;
	private String email;
	 private String mdp; 
	 public Utilisateur (String nom,String prenom,String pseudo,String email,String mdp) {
		 
		 this.setNom(nom);
		 this.setPrenom(prenom);
		 this.setPseudo(pseudo);
		 this.setEmail(email);
		 this.setMdp(mdp);
	 }
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	 
	 
}





