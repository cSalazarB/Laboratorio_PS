package main.java.com.example.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import main.java.com.example.dao.AdminDao;
import main.java.com.example.dao.AgenciaDao;
import main.java.com.example.dao.DestinyDao;
import main.java.com.example.dao.ClienteDao;
import main.java.com.example.dao.PaqueteDao;
import main.java.com.example.logic.Admin;
import main.java.com.example.logic.Destiny;
import main.java.com.example.logic.Paquete;
import main.java.com.example.logic.Utilidades;
import main.java.com.example.logic.Agency;
import main.java.com.example.logic.Customer;;;


@Controller
public class ClienteController {
	@Autowired
	ClienteDao cliente;
	
	@RequestMapping(value="customer/save", method=RequestMethod.POST)
	@ResponseBody 
	public String saveCustomer(@RequestBody MultiValueMap<String,String> params) throws IOException{    
	
		Customer cl = new Customer.BuildCustomer(params.getFirst("nombre"), params.getFirst("email"))
				.setLastName(params.getFirst("apellido"))
				.setPassword(params.getFirst("password"))
				.setPhone(params.getFirst("telefono"))
				.build();
		cliente.add(cl);
		return "Gracias Por Registrarse!";
	}
	
}
