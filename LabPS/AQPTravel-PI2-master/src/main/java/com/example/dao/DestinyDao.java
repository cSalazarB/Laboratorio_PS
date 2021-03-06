package main.java.com.example.dao;

import java.util.List;

import main.java.com.example.logic.Admin;
import main.java.com.example.logic.Destiny;

public interface DestinyDao {
	
	public List<Destiny> listAllDestiny();

	public void addDestiny(Destiny destiny);

	public void updateDestiny(Destiny destiny);

	public void deleteDestiny(Destiny destiny);

	public Destiny findDestinyById(int id);

	public void changeStateDestiny(int id, int state);

}
