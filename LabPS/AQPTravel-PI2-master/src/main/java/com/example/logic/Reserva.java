package com.example.logic;

public class Reserva {
	private Integer idReserva;
	private final Integer idPaquete;
	private final Integer idCliente;
	private final Double precioReserva;
	private final Integer diaSalida;
	private final Integer mesSalida;
	private final Integer anioSalida;
	private final Integer diaRegreso;
	private final Integer mesRegreso;
	private final Integer anioRegreso;
	private final Integer diaReserva;
	private final Integer mesReserva;
	private final Integer anioReserva;
	private final Integer numPersonasReserva;
	
	public static class BuildReserva implements Builder<Reserva>{
		//Required parameters 
		private final Integer idPaq;
		private final Integer idCl;
		
		//Parameters initialized 
		
		private Double precioReserva=0.0;
		private Integer diaSalida=0;
		private Integer mesSalida=0;
		private Integer anioSalida=0;
		private Integer diaRegreso=0;
		private Integer mesRegreso=0;
		private Integer anioRegreso=0;
		private Integer diaReserva=0;
		private Integer mesReserva=0;
		private Integer anioReserva=0;
		private Integer numPersonasReserva=0;
		public BuildReserva(Integer idp,Integer idc) {
			this.idPaq=idp;
			this.idCl=idc;
		}
		public BuildReserva setprecioReserva(Double p) {
			this.precioReserva=p;
			return this;
		}
		public BuildReserva setFechaSalida(Integer d,Integer m,Integer a) {
			assert((d>31||d<1)&&(m>12||m<1)&&(a<2016));
			this.diaSalida = d;
			this.mesSalida = m;
			this.anioSalida = a;
			return this;
		}
		public BuildReserva setFechaRegreso(Integer d,Integer m,Integer a) {
			assert((d>31||d<1)&&(m>12||m<1)&&(a<2016));
			this.diaRegreso = d;
			this.mesRegreso= m;
			this.anioRegreso = a;
			return this;
		}
		public BuildReserva setFechaReserva(Integer d,Integer m,Integer a) {
			assert((d>31||d<1)&&(m>12||m<1)&&(a<2016));
			this.diaReserva= d;
			this.mesReserva = m;
			this.anioReserva = a;
			return this;
		}
		public BuildReserva setNumPersonas(Integer val) {
			assert(val<0);
			this.numPersonasReserva=val;
			return this;
		}
		public Reserva build() {
			return new Reserva(this);
		}
	}
	private Reserva(BuildReserva build) {
		this.idCliente=build.idCl;
		this.idPaquete=build.idPaq;
		this.precioReserva=build.precioReserva;
		this.diaSalida=build.diaSalida;
		this.mesSalida=build.mesSalida;
		this.anioSalida=build.anioSalida;
		this.diaRegreso=build.diaRegreso;
		this.mesRegreso=build.mesRegreso;
		this.anioRegreso=build.anioRegreso;
		this.diaReserva=build.diaReserva;
		this.mesReserva=build.mesReserva;
		this.anioReserva=build.anioReserva;
		this.numPersonasReserva=build.numPersonasReserva;
	}
	public Integer getIdReserva() {
		return idReserva;
	}
	public void setIdReserva(Integer idReserva) {
		this.idReserva = idReserva;
	}
	public Integer getIdPaquete() {
		return idPaquete;
	}
	public Integer getIdCliente() {
		return idCliente;
	}
	public Double getPrecioReserva() {
		return precioReserva;
	}
	public Integer getDiaSalida() {
		return diaSalida;
	}
	public Integer getMesSalida() {
		return mesSalida;
	}
	public Integer getAnioSalida() {
		return anioSalida;
	}
	public Integer getDiaRegreso() {
		return diaRegreso;
	}
	public Integer getMesRegreso() {
		return mesRegreso;
	}
	public Integer getAnioRegreso() {
		return anioRegreso;
	}
	public Integer getDiaReserva() {
		return diaReserva;
	}
	public Integer getMesReserva() {
		return mesReserva;
	}
	public Integer getAnioReserva() {
		return anioReserva;
	}
	public Integer getNumPersonasReserva() {
		return numPersonasReserva;
	}


}
