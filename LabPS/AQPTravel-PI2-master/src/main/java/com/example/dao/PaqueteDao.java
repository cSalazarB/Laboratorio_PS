package com.example.dao;

import java.util.List;

import com.example.logic.FotosPaquete;
import com.example.logic.Paquete;


public interface PaqueteDao {
	
	public List<Paquete> listAllPaquetes();
	
	public int addPaquete(Paquete admin);
	
	public void updatePaquete(Paquete admin);
	
	public void deletePaquete(Paquete admin);
	
	public Paquete findPaqueteById(int id);
	
	public void changeStatePaquete(int id, char state);
	
	public List<Paquete> listFilterPaquetes(Paquete param);
	
	public String getNombreAgencia(int id);
	
	public List<Paquete> ordernarPorFecha();
	
	public void insertOneDestiny(int idPaquete, int destiny);
	
	/*¨detalles paqute */	

	public boolean addFotoPaquete(FotosPaquete foto);
	public boolean addDestiny(int idPaquete, int idFoto);	
	public void insertDestinations(int idPaquete, List<Integer> listDestiny);
	public List<FotosPaquete> getImagePaquete(int idPaquete);

}
