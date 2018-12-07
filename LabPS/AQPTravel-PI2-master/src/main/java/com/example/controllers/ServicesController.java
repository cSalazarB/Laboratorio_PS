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
import com.example.logic.Admin;
import com.example.logic.Destiny;
import com.example.logic.User;
import com.example.logic.Utilidades;
import com.example.logic.Agency;

/* CLASE para responder a Solicitudes  desde ADMIN */

@Controller
@SessionAttributes("iduser")
public class ServicesController {
	@Autowired
	AdminDao adminDao;
	
	@RequestMapping(value = "sessionuser", method = RequestMethod.POST)
	public String login(@RequestBody MultiValueMap<String, String> params, ModelMap modelp) throws Exception{
		
		String c=params.getFirst("username");
		String passEnviada=params.getFirst("password");
		User user=adminDao.findUserByEmail(c);
		String passBaseDatos=Utilidades.Desencriptar(user.getContrasena());
		// Verificacion Admin
		if (passEnviada.equals(passBaseDatos))
		{
			modelp.put("iduser",adminDao.findUserByEmail(c).getCorreoUsuario());
			if(adminDao.findRolByEmail(c).equals("ROLE_ADMIN")&& adminDao.findUserByEmail(c).getEnable()==1)
				return "agencia_admin";
			else if(adminDao.findRolByEmail(c).equals("ROLE_AG"))
				return "paquete_admin";
			else
				return "pagina_usuario";
		}
		modelp.put("iduser", "empty");
		return "noauto";
	}
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model, String name) {
		model.put("iduser", "empty");
		return "index";
	}
}
