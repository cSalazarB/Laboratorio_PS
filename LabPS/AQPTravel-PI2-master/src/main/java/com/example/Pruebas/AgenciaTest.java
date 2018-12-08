package main.java.com.example.Pruebas;

import static org.junit.Assert.*;

import org.junit.Test;
import main.java.com.example.logic.*;
public class AgenciaTest {

	@Test
	public void Agencia() {
		
		Agencia dt = new Agencia(1,"Agencia 1");
		assertTrue(dt != null);		
	}
	
	@Test
	public void Agencia2() {
		
		Agencia dt = new Agencia(0,"##54///?");
		assertTrue(dt != null);		
	}
	
	@Test
	public void Agencia3() {
		
		Agencia dt = new Agencia(1,"324235");
		assertTrue(dt != null);		
	}

}
