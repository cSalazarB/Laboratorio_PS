package com.example.logic;

public class Actividad {
	private Integer idActividad;
	private final Integer idPaquete;
	private final String nombreActivad;
	private final Integer tiempoActividad;
	private final String horaActividad; 
	public static class BuildActividad implements Builder<Actividad>{
		
		private final String nombreActivad;
		private Integer idPaquete;
		private Integer tiempoActividad;
		private String horaActividad;
		public BuildActividad(String nombre) {
			this.nombreActivad=nombre;
		}
		public BuildActividad setIdPaquete(Integer val) {
			this.idPaquete=val;
			return this;
		}
		public BuildActividad setTiempoActividad(Integer val) {
			this.tiempoActividad=val;
			return this;
		}
		public BuildActividad setHora(String val) {
			this.horaActividad=val;
			return this;
		}
		public Actividad build() {
			return new Actividad(this);
		}
	}
	private Actividad(BuildActividad build) {
		this.idPaquete=build.idPaquete;
		this.nombreActivad=build.nombreActivad;
		this.tiempoActividad=build.tiempoActividad;
		this.horaActividad=build.horaActividad;
	}
	public Integer getIdActividad() {
		return idActividad;
	}
	public void setIdActividad(Integer idActividad) {
		this.idActividad = idActividad;
	}
	public Integer getIdPaquete() {
		return idPaquete;
	}
	public String getNombreActivad() {
		return nombreActivad;
	}
	public Integer getTiempoActividad() {
		return tiempoActividad;
	}
	public String getHoraActividad() {
		return horaActividad;
	}

}
