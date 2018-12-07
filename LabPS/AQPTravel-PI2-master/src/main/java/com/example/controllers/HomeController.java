package com.example.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.AdminDao;
import com.example.dao.AdminDaoImpl;
import com.example.dao.AgenciaDao;
import com.example.dao.ClienteDao;
import com.example.logic.Admin;
import com.example.logic.Agency;
import com.example.logic.Customer;

import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.AdminDao;
import com.example.dao.PaqueteDao;
import com.example.logic.Admin;
import com.example.logic.Paquete;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;


/* CLASE para responder a Solicitudes  desde HOME */

@Controller
@SessionAttributes("iduser")
public class HomeController {


	@Autowired
	PaqueteDao paquetDao;
	@Autowired
	AdminDao admin;
	
	/* Request para pagina principal */
	@RequestMapping(value="/index", method=RequestMethod.GET ,produces="text/html;charset=UTF-8")
	public String indexs(ModelMap model){
		model.put("iduser", "empty");
		return "index";
	}
	/* Request para pagina principal */
	@RequestMapping(value="/", method=RequestMethod.GET ,produces="text/html;charset=UTF-8")
	public String showLoginPage(ModelMap model) {
		model.put("iduser", "empty");
		return "index";
	}
	/* Request para pagina principal de usuario */
	@RequestMapping(value="pagina_usuario", method=RequestMethod.GET,produces="text/html;charset=UTF-8")
	public String getPageMainAdmin(ModelMap model){
		
		String correo=(String) model.get("iduser");
		if(admin.findRolByEmail(correo).equals("ROLE_CU"))
			return "pagina_usuario";
		return "noauto";
	}
	
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String showLoginPage() {
		return "login";
	}
	/* request para devolver pagina de filtro de paquete */
	@RequestMapping(value="pageFiltroPaquete", method=RequestMethod.GET)
	public ModelAndView getPageFilterPaquet(ModelAndView model) throws IOException{
		model.setViewName("mispaquetes");
		return model;
	}
	/*Request for filter packet in query */
	@RequestMapping(value="searchFilterPaquet", method=RequestMethod.POST)
	@ResponseBody 
	public List<String> searchFilterPaquet(MultipartHttpServletRequest request) throws IOException{   

		HashMap<String, String> data = new HashMap<>();
		 
		data.put("oferta", request.getParameter("oferta"));
		data.put("destino", request.getParameter("destino"));		
		data.put("duracion", request.getParameter("duracion"));
		data.put("tipo_actividad", request.getParameter("tipo_actividad"));
		data.put("num_personas", request.getParameter("num_personas"));
		
		Paquete paquet = getFilterPaquete(data);	
		/*System.out.println(": "+paquet.getOfertaPaquete()+" "+paquet.getDestinoPaquete()+" "+paquet.getDuracionPaquete()+" "
				+paquet.getTipoPaquete()+" "+paquet.getCapacidadPaquete());*/

		List<Paquete> listFilterPaquet = paquetDao.listFilterPaquetes(paquet);
		List<String> res = new ArrayList<>();

		double numLote = 2;		
		int numPages = 0;

		int pageCurrent = Integer.parseInt(request.getParameter("pagina"));
		//System.out.println("pagina: "+pageCurrent);
		String pagination="";
		String listContent="";

		if(listFilterPaquet.size() > 0) {

			/*for(Paquete p: listFilterPaquet){
				System.out.print(p.getNombrePaquete());
			}*/

			numPages = (int)Math.ceil(listFilterPaquet.size()/numLote);
			
			
			if(pageCurrent > 1){		        
				pagination += "<li><a href='#' onclick='pagination("+(pageCurrent-1)+")' >"+"Anterior </a></li>";
			}

			for(int i=1; i<=numPages; i++){
				if(i == pageCurrent){
					pagination += "<li class='active'><a href='#' onclick='pagination("+i+")' >"+i+"</a></li>";
				}else{
					pagination += "<li><a href='#' onclick='pagination("+i+")' >"+i+"</a></li>";
				}
			}	

			if(pageCurrent < numPages){		        
				pagination += "<li><a href='#' onclick='pagination("+(pageCurrent+1)+")' >"+"Siguiente </a></li>";
			}

			int limit = 0;
			if(pageCurrent > 1){
				limit = (int)numLote*(pageCurrent-1);
			}
						

		
			for(int index = limit; index<listFilterPaquet.size() && index<(numLote+limit) ; index++){		
				Paquete onePaquet = listFilterPaquet.get(index);
				listContent += "<div class='row' id='resultados-wrapper'"
						+ "style='padding: 12px 10px 10px 0px; margin: 10px 0px;"
						+ " background: white; border: 1px solid; box-shadow: 5px 8px 8px #888888;'>"
						+ "<div class='col-lg-6 resultados-item filter-app'>"
						+ "	<a href=''> <img src='admin/imageController/"+onePaquet.getIdPaquete()+"'	alt='gsaga'>"
						+ "<div class='details'>"
						+ "<h4>PARACAS - $200</h4>"
						+ "<a href='' class='link-mas'>Detalles</a>"
						+ "</div>"
						+ "</a> </div>"
						+ "	<div class='col-lg-6 '>"
						+ "<a href=''>"
						+ "<h4 style='font-weight: bold; color: black;'>"+onePaquet.getNombrePaquete()+"</h4></a><span>";
				        
				         for(int i=0;i<onePaquet.getValoracionPaquete();i++)
				        	listContent += " <i class='fa fa-star' aria-hidden='true' style='color: #f48f00;'> </i>";
				        	
						
				         listContent +=  "</span>"
						+ "<p style='font-size: 14px;'>Agencia: "+onePaquet.getDescripcionPaquete()+"</p>"
						+ "<p style='font-size: 14px;'>Capacidad: "+onePaquet.getCapacidadPaquete() +" personas.</p>"
						+ "<p style='font-size: 14px;'>Actividad: "+onePaquet.getTipoPaquete()+"</p></div></div>";
			}

			res.add("true");
			res.add(listContent);
			res.add(pagination);
			


		}	
		else{
			res.add("false");
		}

		return res;
	}
	
	
	private Paquete getFilterPaquete(HashMap<String,String> data){
		Paquete temp = new Paquete();
		
		if(data.get("oferta")!=null && data.get("oferta").length() > 0){
			System.out.println("CALUE: "+data.get("oferta"));
			if(data.get("oferta").charAt(0) == '0')temp.setOfertaPaquete('_');
		    else temp.setOfertaPaquete('1');
		}
		
		if(data.get("destino")!=null && data.get("destino").length() > 0)
			temp.setDestinoPaquete(data.get("destino"));	
		
		if(data.get("duracion")!=null && data.get("duracion").length() > 0)			
			temp.setDuracionPaquete(Integer.parseInt(data.get("duracion")));
		 else temp.setDuracionPaquete(100);
		
		if(data.get("tipo_actividad")!=null && data.get("tipo_actividad").length() > 2)
			temp.setTipoPaquete(data.get("tipo_actividad"));
		 else temp.setTipoPaquete("_");
		
		
		if(data.get("num_personas")!=null && data.get("num_personas").length() > 0)
			temp.setCapacidadPaquete(Integer.parseInt(data.get("num_personas")));
		 else temp.setCapacidadPaquete(1);		
		
		return temp;
		
	}
}
