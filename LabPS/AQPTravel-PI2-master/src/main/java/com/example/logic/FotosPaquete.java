package com.example.logic;

public class FotosPaquete {
	
	
	private Integer idFoto;
	private Integer idPaquete;
	private String nombreFoto;
	private byte[] imagenFoto;
	
	
	public FotosPaquete() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public FotosPaquete(Integer idPaquete, String nombreFoto, byte[] imagenFoto) {
		super();
		this.idPaquete = idPaquete;
		this.nombreFoto = nombreFoto;
		this.imagenFoto = imagenFoto;
	}
	
	
	
	public int getIdFoto() {
		return idFoto;
	}
	public void setIdFoto(int idFoto) {
		this.idFoto = idFoto;
	}
	public int getIdPaquete() {
		return idPaquete;
	}
	public void setIdPaquete(int idPaquete) {
		this.idPaquete = idPaquete;
	}
	public String getNombreFoto() {
		return nombreFoto;
	}
	public void setNombreFoto(String nombreFoto) {
		this.nombreFoto = nombreFoto;
	}
	public byte[] getImagenFoto() {
		return imagenFoto;
	}
	public void setImagenFoto(byte[] imagenFoto) {
		this.imagenFoto = imagenFoto;
	}
	
	

}
