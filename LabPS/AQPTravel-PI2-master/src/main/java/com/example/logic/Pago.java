package com.example.logic;

public class Pago {
	private Integer idPago;
	private final Integer idCliente;
	private final Integer idReserva;
	private final Integer diaPago;
	private final Integer mesPago;
	private final Integer anioPago;
	
	public static class BuildPago implements Builder<Pago>{
		private final Integer idCliente;
		private final Integer idReserva;
		private Integer diaPago;
		private Integer mesPago;
		private Integer anioPago;
		public BuildPago(Integer idc,Integer idr) {
			this.idCliente=idc;
			this.idReserva=idr;
		}
		BuildPago setFechaPago(Integer d,Integer m,Integer a) {
			assert((d>31||d<1)&&(m>12||m<1)&&(a<2016));
			this.diaPago = d;
			this.mesPago = m;
			this.anioPago = a;
			return this;
		}
		public Pago build() {
			return new Pago(this);
		}
	}
	private Pago(BuildPago build) {
		this.idCliente=build.idCliente;
		this.idReserva=build.idReserva;
		this.diaPago=build.diaPago;
		this.mesPago=build.mesPago;
		this.anioPago=build.anioPago;
	}
	public Integer getIdPago() {
		return idPago;
	}
	public void setIdPago(Integer idPago) {
		this.idPago = idPago;
	}
	public Integer getIdCliente() {
		return idCliente;
	}
	public Integer getIdReserva() {
		return idReserva;
	}
	public Integer getDiaPago() {
		return diaPago;
	}
	public Integer getMesPago() {
		return mesPago;
	}
	public Integer getAnioPago() {
		return anioPago;
	}
	
}
