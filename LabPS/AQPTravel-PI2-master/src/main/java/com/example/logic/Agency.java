package com.example.logic;

public class Agency {

	private Integer idAgency;
	private final String name;
	private final String email;
	private final String ruc;
	private final String socialReason;
	private final String ubigeo;
	private final String address;
	private final Integer rate;
	private final String description;
	private final String phone;
	private final Integer dayMod;
	private final Integer monthMod;
	private final Integer yearMod;
	private Integer codAdmin; 
	private final String password;
	private char state;
	
	
	public static class BuildAgency implements Builder<Agency>{
		
		//Required parameters 
		private final String name;
		
		//Parameters initialized 
		private String email="";
		private String ruc="";
		private String socialReason="";
		private String ubigeo="";
		private String address="";
		private int rate=0;
		private String description="";
		private String password="";
		private String phone="";
		private int dayMod=0;
		private int monthMod=0;
		private int yearMod=0;
		private Integer codAdmin=0;
		private char state='0';
		public BuildAgency(String name) {
			this.name=name;
		}
		public BuildAgency setEmail(String val) {
			this.email=val;
			return this;
		}
		public BuildAgency setAddress(String val) {
			this.address=val;
			return this;
		}
		public BuildAgency setRuc(String val) {
			ruc=val;
			return this;
		}
		public BuildAgency setPassword(String val) {
			password=Utilidades.Encriptar(val);
			return this;
		}
		public BuildAgency setPhone(String val) {
			phone=val;
			return this;
		}
		public Agency build() {
			return new Agency(this);
		}
		public BuildAgency setSocialReason(String socialReason) {
			this.socialReason = socialReason;
			return this;
		}
		public BuildAgency setUbigeo(String ubigeo) {
			this.ubigeo = ubigeo;
			return this;
		}
		public BuildAgency setDirecction(String direcction) {
			this.address = direcction;
			return this;
		}
		public BuildAgency setRate(int rate) {
			this.rate = rate;
			return this;
		}
		public BuildAgency setDescription(String description) {
			this.description = description;
			return this;
		}
		public BuildAgency setDayMod(int dayMod) {
			assert(dayMod>31||dayMod<1);
			this.dayMod = dayMod;
			return this;
		}
		public BuildAgency setMonthMod(int monthMod) {
			assert(monthMod>12||monthMod<1);
			this.monthMod = monthMod;
			return this;
		}
		public BuildAgency setYearMod(int yearMod) {
			assert(yearMod<2016);
			this.yearMod = yearMod;
			return this;
		}
		public BuildAgency setCodAdmin(Integer codAdmin) {
			this.codAdmin =codAdmin;
			return this;
		}
		public BuildAgency setState(char s) {
			this.state =s;
			return this;
		}
	}
	

	public Agency(BuildAgency build) {
		this.name=build.name;
		this.email=build.email;
		this.ruc=build.ruc;
		this.socialReason=build.socialReason;
		this.ubigeo=build.ubigeo;
		this.address=build.address;
		this.state=build.state;
		this.description=build.description;
		this.password=build.password;
		this.phone=build.phone;
		this.dayMod=build.dayMod;
		this.monthMod=build.monthMod;
		this.yearMod=build.yearMod;
		this.rate=build.rate;
		this.codAdmin=build.codAdmin;
	}

	public void setIdAgency(Integer val) {
		this.idAgency=val;
	}
	public Integer getIdAgency() {
		return idAgency;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public String getPhone() {
		return phone;
	}
	public char getState() {
		return state;
	}
	public void setState(char state) {
		this.state = state;
	}
	public String getDescription() {
		return description;
	}
	public int getRate() {
		return rate;
	}
	public String getUbigeo() {
		return ubigeo;
	}
	public String getSocialReason() {
		return socialReason;
	}
	public String getRuc() {
		return ruc;
	}
	public int getDayMod() {
		return dayMod;
	}
	public int getMonthMod() {
		return monthMod;
	}
	public int getYearMod() {
		return yearMod;
	}
	public void set(Integer v) {
		this.codAdmin=v;
	}
	public Integer getCodAdmin() {
		return codAdmin;
	}
	public String getAddress() {
		return address;
	}
}