package com.example.controllers;

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

import com.example.dao.AdminDao;
import com.example.dao.AgenciaDao;
import com.example.dao.DestinyDao;
import com.example.dao.ClienteDao;
import com.example.dao.PaqueteDao;
import com.example.logic.Admin;
import com.example.logic.Destiny;
import com.example.logic.Paquete;
import com.example.logic.Utilidades;
import com.example.logic.Agency;
import com.example.logic.Customer;;;


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
