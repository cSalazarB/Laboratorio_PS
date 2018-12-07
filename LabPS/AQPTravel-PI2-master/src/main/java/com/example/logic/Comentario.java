package com.example.logic;

public class Comentario {
	private Integer idComentario;
	private final Integer idPquete;
	private final Integer idCliente;
	private final String comentario;
	public static class BuildComentario implements Builder<Comentario>{
		private Integer idPaquete=0;
		private Integer idCliente=0;
		private String comentario;
		public BuildComentario(){}
		public BuildComentario setIdPaquete(Integer val) {
			this.idPaquete=val;
			return this;
		}
		public BuildComentario setIdCliente(Integer val) {
			this.idCliente=val;
			return this;
		}
		public BuildComentario setComentario(String val) {
			this.comentario=val;
			return this;
		}
		public Comentario build() {
			return new Comentario(this);
		}
		
	}
	private Comentario(BuildComentario build) {
		this.idPquete=build.idPaquete;
		this.idCliente=build.idCliente;
		this.comentario=build.comentario;
	}
	public Integer getIdComentario() {
		return idComentario;
	}
	public void setIdComentario(Integer idComentario) {
		this.idComentario = idComentario;
	}
	public Integer getIdPquete() {
		return idPquete;
	}
	public Integer getIdCliente() {
		return idCliente;
	}
	public String getComentario() {
		return comentario;
	}

}
