package com.example.logic;

public class Agencia {
	

	private Integer idAgencia;
	private String nombreAgencia;
	
	
	public Agencia() {
		super();
		this.nombreAgencia = "Thing";
	}
	public Agencia(Integer idAgencia, String nombreAgencia) {
		super();
		this.idAgencia = idAgencia;
		this.nombreAgencia = nombreAgencia;
	}
	
	public Integer getIdAgencia() {
		return idAgencia;
	}
	public void setIdAgencia(Integer idAgencia) {
		this.idAgencia = idAgencia;
	}
	public String getNombreAgencia() {
		return nombreAgencia;
	}
	public void setNombreAgencia(String nombreAgencia) {
		this.nombreAgencia = nombreAgencia;
	}

}
