package com.example.logic;

import java.awt.Image;
import java.util.HashMap;

public class Paquete {
	
	
	private Integer idPaquete;
	private Integer idAgencia = 3;
	private String nombrePaquete = "";
	private Double precioPaquete = 0.0;
	private Double precioOferta = 0.0;
	private String tipoPaquete = "";
	private Integer capacidadPaquete = 1;
	private String descripcionPaquete = "";
	private Integer numPaquete = 1;
	private char estadoPaquete = '1';
	private char ofertaPaquete = '0';
	private Integer tiempoOferta = 0;
	private byte[] mapaPaquete = null;
	private String destinoPaquete = "";
	private Integer valoracionPaquete = 0;
	private Integer diaModPaquete = 0;
	private Integer mesModPaquete = 0;
	private Integer anioModPaquete = 0;
	private Integer duracionPaquete = 0;
	private String itinerario = "";
	private String servicios = "";
	private String recomendaciones = "";
	
	private String nombreAgencia="";
	
	public Paquete() {
		super();
	}
	public Paquete(Integer idAgencia, String nombrePaquete, Double precioPaquete, Integer capacidadPaquete,
			String descripcionPaquete, Integer numPaquete, String destinoPaquete, Integer duracionPaquete) {
		super();
		this.idAgencia = idAgencia;
		this.nombrePaquete = nombrePaquete;
		this.precioPaquete = precioPaquete;
		this.capacidadPaquete = capacidadPaquete;
		this.descripcionPaquete = descripcionPaquete;
		this.numPaquete = numPaquete;
		this.destinoPaquete = destinoPaquete;
		this.duracionPaquete = duracionPaquete;
	}
		
	public Paquete(HashMap<String, String> data){
		
		if(data.get("nombrePaquete") != null && data.get("nombrePaquete") != "") 
			this.nombrePaquete = data.get("nombrePaquete");
		
		if(data.get("tipoPaquete") != null){
			this.tipoPaquete = data.get("tipoPaquete");
		}	
		
		if(data.get("duracionPaquete") != null && data.get("duracionPaquete").length() > 0)
			this.duracionPaquete = Integer.parseInt(data.get("duracionPaquete"));
		
		if(data.get("capacidadPaquete") != null && data.get("capacidadPaquete").length() > 0) 
			this.capacidadPaquete = Integer.parseInt(data.get("capacidadPaquete"));
		
		if(data.get("precioPaquete") != null && data.get("precioPaquete").length() > 0) 
			this.precioPaquete = Double.parseDouble(data.get("precioPaquete"));
		
		if(data.get("precioOferta") != null && data.get("precioOferta").length() > 0) 
			this.precioOferta = Double.parseDouble(data.get("precioOferta"));
		
		if(data.get("tiempoOferta") != null && data.get("tiempoOferta").length() > 0)
			this.tiempoOferta = Integer.parseInt(data.get("tiempoOferta"));		
		
		if(data.get("ofertaPaquete") != null && data.get("ofertaPaquete").length() > 0)
			this.ofertaPaquete = (data.get("ofertaPaquete").charAt(0));
		
		if(data.get("stockPaquete") != null && data.get("stockPaquete").length() > 0) 
			this.numPaquete = Integer.parseInt(data.get("stockPaquete"));
		
		
		if(data.get("descripcionPaquete") != null && data.get("descripcionPaquete").length() > 0) 
			this.descripcionPaquete = data.get("descripcionPaquete");
		
		if(data.get("itinerarioPaquete") != null && data.get("itinerarioPaquete").length() > 0) 
			this.itinerario = data.get("itinerarioPaquete");
		
		if(data.get("recomendacionesPaquete") != null && data.get("recomendacionesPaquete").length() > 0)
			this.recomendaciones = data.get("recomendacionesPaquete");
		
		if(data.get("serviciosPaquete") != null && data.get("serviciosPaquete").length() > 0) 
			this.servicios = data.get("serviciosPaquete");
		
		if(data.get("destinosPaquete") != null && data.get("destinosPaquete").length() > 0) 
			this.destinoPaquete = data.get("destinosPaquete");
		
	}
	
	
	public Integer getIdPaquete() {
		return idPaquete;
	}
	public void setIdPaquete(Integer idPaquete) {
		this.idPaquete = idPaquete;
	}
	public Integer getIdAgencia() {
		return idAgencia;
	}
	public void setIdAgencia(Integer idAgencia) {
		this.idAgencia = idAgencia;
	}
	public String getNombrePaquete() {
		return nombrePaquete;
	}
	public void setNombrePaquete(String nombrePaquete) {
		this.nombrePaquete = nombrePaquete;
	}
	public Double getPrecioPaquete() {
		return precioPaquete;
	}
	public void setPrecioPaquete(Double precioPaquete) {
		this.precioPaquete = precioPaquete;
	}
	public Double getPrecioOferta() {
		return precioOferta;
	}
	public void setPrecioOferta(Double precioOferta) {
		this.precioOferta = precioOferta;
	}
	public Integer getCapacidadPaquete() {
		return capacidadPaquete;
	}
	public void setCapacidadPaquete(Integer capacidadPaquete) {
		this.capacidadPaquete = capacidadPaquete;
	}
	public String getDescripcionPaquete() {
		return descripcionPaquete;
	}
	public void setDescripcionPaquete(String descripcionPaquete) {
		this.descripcionPaquete = descripcionPaquete;
	}
	public Integer getNumPaquete() {
		return numPaquete;
	}
	public void setNumPaquete(Integer numPaquete) {
		this.numPaquete = numPaquete;
	}
	public char getEstadoPaquete() {
		return estadoPaquete;
	}
	public void setEstadoPaquete(char estadoPaquete) {
		this.estadoPaquete = estadoPaquete;
	}
	public char getOfertaPaquete() {
		return ofertaPaquete;
	}
	public void setOfertaPaquete(char ofertaPaquete) {
		this.ofertaPaquete = ofertaPaquete;
	}
	public Integer getTiempoOferta() {
		return tiempoOferta;
	}
	public void setTiempoOferta(Integer tiempoOferta) {
		this.tiempoOferta = tiempoOferta;
	}
	public byte[] getMapaPaquete() {
		return mapaPaquete;
	}
	public void setMapaPaquete(byte[] mapaPaquete) {
		this.mapaPaquete = mapaPaquete;
	}
	public String getDestinoPaquete() {
		return destinoPaquete;
	}
	public void setDestinoPaquete(String destinoPaquete) {
		this.destinoPaquete = destinoPaquete;
	}
	public Integer getValoracionPaquete() {
		return valoracionPaquete;
	}
	public void setValoracionPaquete(Integer valoracionPaquete) {
		this.valoracionPaquete = valoracionPaquete;
	}
	public Integer getDiaModPaquete() {
		return diaModPaquete;
	}
	public void setDiaModPaquete(Integer diaModPaquete) {
		this.diaModPaquete = diaModPaquete;
	}
	public Integer getMesModPaquete() {
		return mesModPaquete;
	}
	public void setMesModPaquete(Integer mesModPaquete) {
		this.mesModPaquete = mesModPaquete;
	}
	public Integer getAnioModPaquete() {
		return anioModPaquete;
	}
	public void setAnioModPaquete(Integer anioModPaquete) {
		this.anioModPaquete = anioModPaquete;
	}
	public Integer getDuracionPaquete() {
		return duracionPaquete;
	}
	public void setDuracionPaquete(Integer duracionPaquete) {
		this.duracionPaquete = duracionPaquete;
	}
	public String getItinerario() {
		return itinerario;
	}
	public void setItinerario(String itinerario) {
		this.itinerario = itinerario;
	}
	public String getServicios() {
		return servicios;
	}
	public void setServicios(String servicios) {
		this.servicios = servicios;
	}
	public String getRecomendaciones() {
		return recomendaciones;
	}
	public void setRecomendaciones(String recomendaciones) {
		this.recomendaciones = recomendaciones;
	}
	public String getTipoPaquete() {
		return tipoPaquete;
	}
	public void setTipoPaquete(String tipoPaquete) {
		this.tipoPaquete = tipoPaquete;
	}
	public String getNombreAgencia() {
		return nombreAgencia;
	}
	public void setNombreAgencia(String nombreAgencia) {
		this.nombreAgencia = nombreAgencia;
	}
	
	
}