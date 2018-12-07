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
import com.example.dao.PaqueteDao;
import com.example.logic.Admin;
import com.example.logic.Destiny;
import com.example.logic.Paquete;
import com.example.logic.Utilidades;
import com.example.logic.Agency;

/* CLASE para responder a Solicitudes  desde ADMIN */

@Controller
@SessionAttributes("iduser")
public class AdminController {

	@Autowired
	AdminDao adminDao;
	
	@Autowired
	DestinyDao destinyDao;
	
	@Autowired
	PaqueteDao paqueteDao;
	
	/* Request para obtener lista de usaurios */
	@RequestMapping(value="admin/list_admin",  method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	@ResponseBody
	public String listContact(ModelAndView model) throws IOException{
		List<Admin> listContact = adminDao.listAllAdmin();

		String response="";
		int cont = 0;
		for(Admin admin : listContact){
			response += "<tr>" +
					"<td>"+ (++cont) +"</td>" +
					"<td>"+admin.getName()+"</td>" +
					"<td>"+admin.getLastname()+"</td>" +
					"<td>"+admin.getEmail()+"</td>";

			if(admin.getState() == '1'){
				response += " <td> "
						+ "<input type='checkbox' name='onoffswitch' class='checkAdmin ' id='' value='activo' onchange='changeCheckBox("+admin.getIdAdmin()+", this)' checked>"
						+ "</td></tr>";

			}else if(admin.getState() == '0'){
				response += " <td> "
						+ "<input type='checkbox' name='onoffswitch' class='checkAdmin ' id='' value='desactivo' onchange='changeCheckBox("+admin.getIdAdmin()+", this)' >"
						+ "</td></tr>";
			}			
		}
		return response; 
	}
	
	//PAQUETES RECIENTES POR AÑO 
		@RequestMapping(value="admin/list_paquetesRecientes",  method=RequestMethod.POST, produces="text/html;charset=UTF-8")
		@ResponseBody
		public String paquetesRecientes(ModelAndView model) throws IOException{
				
			List<Paquete> listContact= paqueteDao.ordernarPorFecha();
			
			
			
			String response="";
			int cont = 0;
			for(Paquete paquet : listContact){
				
				response += "<tr>" +
						"<td>" + (++cont) + "</td>" +
						"<td>" + paquet.getNombrePaquete() + "</td>" +					
						"<td>" + paquet.getNombreAgencia()+ "</td>" +
						"<td>" + paquet.getDiaModPaquete()+"/" +paquet.getMesModPaquete()+"/"+paquet.getAnioModPaquete()+ "</td>";
		
			}
			
			return response; 
		}
		

	/* Request para cargar la pagina del Admin */
	@RequestMapping(value="admin/users", method=RequestMethod.GET)
	public ModelAndView index(ModelAndView model) throws IOException{
		ModelAndView model2 = new ModelAndView();
		model2.setViewName("usuarios_admin");
		
		return model2;
	}
	
	
	/* Request para cargar la pagina del Admin */
	@RequestMapping(value="admin/mensajes", method=RequestMethod.GET)
	public ModelAndView getPageMensajes(ModelAndView model) throws IOException{
		ModelAndView model2 = new ModelAndView();
		model2.setViewName("mensajes_admin");
		
		return model2;
	}
	
	/* Request para cargar la pagina del Admin */
	@RequestMapping(value="admin/destinos", method=RequestMethod.GET)
	public ModelAndView getPageDestinos(ModelAndView model) throws IOException{
		ModelAndView model2 = new ModelAndView();
		model2.setViewName("sitio_turistico_admin");
		
		return model2;
	}
	
	/* Request para cargar la pagina del Admin */
	@RequestMapping(value="admin", method=RequestMethod.GET)
	public ModelAndView getPageAdmin(ModelAndView model) throws IOException{
		ModelAndView model2 = new ModelAndView();
		model2.setViewName("pagina_usuario_main");
		
		return model2;
	}
	
	/* Request para agregar usuario a la BD */
	@RequestMapping(value="admin/saveAdmin", method=RequestMethod.POST)
	@ResponseBody 
	public String saveAdmin(@RequestBody MultiValueMap<String,String> params) throws IOException{    
	
		Admin admin = new Admin();

		admin.setName(params.getFirst("nombre"));
		admin.setLastname(params.getFirst("apellidoAdmin"));
		admin.setPhone(params.getFirst("celularAdmin"));
		admin.setEmail(params.getFirst("correoAdmin"));
		admin.setAddress(params.getFirst("direccionAdmin"));
		admin.setPassword(params.getFirst("contrasenaAdmin"));		
		
		adminDao.addAdmin(admin);
		return "Listo!, Gracias y Bienvenido";
	} 		

	/* Request para envio de pagina de Paquete */
	@RequestMapping(value="admin/paquetes", method=RequestMethod.GET)
	public ModelAndView paquetes(ModelAndView model) throws IOException{

		ModelAndView model2 = new ModelAndView();
		model2.setViewName("paquete_admin");	 
		
		return model2;

	}
	
	/* Request para envio de Formulario de Paquete */	
	@RequestMapping(value="admin/agregar_paquetes", method=RequestMethod.GET)
	public ModelAndView formPaquetes(ModelAndView model) throws IOException{

		ModelAndView model2 = new ModelAndView();
		model2.setViewName("agregar_paquete_admin");	 
		
		return model2;

	}

	
	/*  Request cambiar stado de usuario */
	
	@RequestMapping(value="admin/changeStateAdmin", method=RequestMethod.POST)
	@ResponseBody
	public String changeStateAdmin(HttpServletRequest request) throws IOException{
		
		String []a1 = request.getParameterValues("key");	
		String []a2 = request.getParameterValues("state");
	
		adminDao.changeStateAdmin(Integer.parseInt(a1[0]), a2[0].charAt(0));		
		return "true";		
		
	}
	
	@RequestMapping(value = "admin/getDestinos", method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	@ResponseBody
	public String getDestinos(ModelAndView model) throws IOException {
		
		List<Destiny> listDestiny = destinyDao.listAllDestiny();
		String response="";
		
		for(Destiny destiny : listDestiny)
			response += "<option value='"+destiny.getIdDestino()+"'>"+destiny.getNombreDestino()+"</option>";					
		
		return response;		
	}
	
	
	/* Request para envio de pagina de Agencia */
	@RequestMapping(value="admin/agencias", method=RequestMethod.GET)
	public ModelAndView agencias(ModelAndView model) throws IOException{

		ModelAndView model2 = new ModelAndView();
		model2.setViewName("agencia_admin");	 
		
		return model2;

	}
	
	/* Request para envio de Formulario de Agencia */	
	@RequestMapping(value="admin/agregar_agencias", method=RequestMethod.GET)
	public ModelAndView formAgencias(ModelAndView model) throws IOException{

		ModelAndView model2 = new ModelAndView();
		model2.setViewName("agregar_agencia_admin");	 
		
		return model2;

	}
}