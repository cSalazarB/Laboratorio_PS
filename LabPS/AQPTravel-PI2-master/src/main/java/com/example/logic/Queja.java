package com.example.logic;

public class Queja {
	
	private Integer idQueja;
	private final String descripcion;
	private char tipo;
	
	public static class BuildQueja implements Builder<Queja>{
		private final String descripcion;
		private char tipo='0';
		public BuildQueja(String ds) {
			this.descripcion=ds;
		}
		public BuildQueja setTipo(char d) {
			this.tipo=d;
			return this;
		}
		public Queja build() {
			return new Queja(this);
		}
	}
	private Queja(BuildQueja build) {
		this.descripcion=build.descripcion;
		this.tipo=build.tipo;
	}
	public Integer getIdQueja() {
		return idQueja;
	}
	public void setIdQueja(Integer idQueja) {
		this.idQueja = idQueja;
	}
	public char getTipo() {
		return tipo;
	}
	public void setTipo(char tipo) {
		this.tipo = tipo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	
}
