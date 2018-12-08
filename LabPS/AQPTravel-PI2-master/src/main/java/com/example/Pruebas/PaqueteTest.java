package main.java.com.example.Pruebas;

import static org.junit.Assert.*;

import org.junit.Test;
import main.java.com.example.logic.*;
public class PaqueteTest {

	

	@Test
	public void paquete1() {
		Paquete pq = new Paquete(1,"Selva", 23.546, 1,"Viaje a la Selva", 23, "Madre De Dios", 23);
		assertTrue(pq!= null);
	}
	
	@Test
	public void paquete2() {
		Paquete pq = new Paquete(1,"$", 0.0, 1,"Viaje a la Selva", 23, "Madre De Dios", 23);
		assertTrue(pq!= null);
	}
	
	@Test
	public void paquete3() {
		Paquete pq = new Paquete(1,"123", 100.00, 1,"Viaje a la Selva", 23, "Madre De Dios", 23);
		assertTrue(pq!= null);
	}
	
	@Test
	public void paquete4() {
		Paquete pq = new Paquete(1,"", 23.546, 1,"Viaje a la Selva", 23, "Madre De Dios", 23);
		assertTrue(pq!= null);
	}

}
