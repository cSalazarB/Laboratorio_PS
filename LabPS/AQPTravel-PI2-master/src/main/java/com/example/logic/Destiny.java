package com.example.logic;

import com.example.logic.Agency.BuildAgency;
import com.example.logic.Destiny.BuildDestiny;

public class Destiny {
	
	private int idDestino;
	private int idPaquete;
	private String nombreDestino;
	private int estadoDestino;
	
	public static class BuildDestiny implements Builder<Destiny>{
		
		//Required parameters 
		//private final String nombreDestino;
		
		//Parameters initialized 
		private int idDestino=0;
		private String nombreDestino="";
		private int estadoDestino=0;
	
		public BuildDestiny(String nombreDestino) {
			this.nombreDestino=nombreDestino;
		}
		public Destiny build() {
			return new Destiny(this);
		}
		public BuildDestiny setIdDestino(int idDestino) {
			this.idDestino = idDestino;
			return this;
		}
		public BuildDestiny setEstadoDestino(int estadoDestino) {
			this.estadoDestino = estadoDestino;
			return this;
		}
		public BuildDestiny setNombreDestino(String nombreDestino) {
			this.nombreDestino = nombreDestino;
			return this;
		}
	}
	
	public Destiny() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Destiny(BuildDestiny build) {
		super();
		this.idDestino = build.idDestino;
		this.nombreDestino = build.nombreDestino;
		this.estadoDestino = build.estadoDestino;
	}

	public int getIdDestino() {
		return idDestino;
	}
	public void setIdDestino(int idDestino) {
		this.idDestino = idDestino;
	}
	public int getIdPaquete() {
		return idPaquete;
	}
	public void setIdPaquete(int idPaquete) {
		this.idPaquete = idPaquete;
	}
	public String getNombreDestino() {
		return nombreDestino;
	}
	public void setNombreDestino(String nombreDestino) {
		this.nombreDestino = nombreDestino;
	}
	public int getEstadoDestino() {
		return estadoDestino;
	}
	public void setEstadoDestino(int estadoDestino) {
		this.estadoDestino = estadoDestino;
	}
	

}
