package com.example.controllers;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.dao.AdminDao;
import com.example.dao.DestinyDao;
import com.example.logic.Admin;
import com.example.logic.Destiny;
import com.example.logic.Destiny.BuildDestiny;
import com.example.logic.Destiny;

@Controller

public class DestinyController  {
	
	@Autowired
	DestinyDao destinyDao;
	
	
	@RequestMapping(value="destinos/list_destinos",  method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	@ResponseBody
	public String listDestiny(ModelAndView model) throws IOException{
		
		List<Destiny> listDestino = destinyDao.listAllDestiny();
		
		//destino destino = new destino();
		
		String response="";
		int cont = 0;
		for(Destiny tmpDestino : listDestino){
			
			response += "<tr>" +
					"<td>" + (++cont) + "</td>" +
					"<td>" + tmpDestino.getNombreDestino() + "</td>";
			
			if(tmpDestino.getEstadoDestino()== 1){
				System.out.println("controller Destino! "+tmpDestino.getEstadoDestino());
				response += " <td> "
						+ "<input type='checkbox' name='' class=' ' id='' value='activo' onchange='changeCheckBoxDestino("+tmpDestino.getIdDestino()+", this)' checked>"
						+ "</td>";

			}else{
				response += " <td> "
						+ "<input type='checkbox' name='' class=' ' id='' value='desactivo' onchange='changeCheckBoxDestino("+tmpDestino.getIdDestino()+", this)' >"
						+ "</td>";
			}			
			//../admin/destinos/20/updatedestino
			response += "<td> <a class='btn btn-warning' data-toggle='modal' onclick='updatedestino("+tmpDestino.getIdDestino() +", \""+tmpDestino.getNombreDestino()+"\")' data-target='#myModalDestinoEditar' aria-label='Delete'>"
					+ "	<i class='fa fa-pencil' aria-hidden='true'></i>&nbsp;Editar	</a> </td></tr>";
		}
		
		return response; 
	}
	
	
	
	
	@RequestMapping(value="admin/destinos/changeStateDestino", method=RequestMethod.POST)
	@ResponseBody
	public String changeStateDestino(HttpServletRequest request) throws IOException{
		
		String []a1 = request.getParameterValues("key");	
		String []a2 = request.getParameterValues("state");
		destinyDao.changeStateDestiny(Integer.parseInt(a1[0]), Integer.parseInt(a2[0]));		
		return "true";		
		
	}
	
	
	
	
	
	@RequestMapping(value="admin/destinos/updateDestino", method=RequestMethod.POST)
	@ResponseBody 
	public String updateDestino(@RequestBody MultiValueMap<String,String> params) throws IOException{    
	
		Destiny destino = new Destiny();
		destino.setIdDestino(Integer.parseInt(params.getFirst("idDestinoE")));
		destino.setNombreDestino(params.getFirst("nombreDestinoE"));	
		
		destinyDao.updateDestiny(destino);

		return "true"; 		
	} 
	
	
	
	@RequestMapping(value="admin/destinos/saveDestino", method=RequestMethod.POST)
	@ResponseBody 
	public String savedestino(@RequestBody MultiValueMap<String,String> params) throws IOException{    
        System.out.println("ESTOY A PUNTO DE GURADAR!!!!!");		
		
		Destiny destino=new Destiny();
		
		destino.setNombreDestino(params.getFirst("nombreDestino"));		
		destino.setEstadoDestino(Integer.parseInt(params.getFirst("estadoDestino")));
		
		destinyDao.addDestiny(destino);
		
		return "true";
	} 
	
	

	
	private void populateDefaultModel(Model model) {
/*
		List<String> frameworksList = new ArrayList<String>();
		frameworksList.add("Spring MVC");
		frameworksList.add("Struts 2");
		frameworksList.add("JSF 2");
		frameworksList.add("GWT");
		frameworksList.add("Play");
		frameworksList.add("Apache Wicket");
		model.addAttribute("frameworkList", frameworksList);

		Map<String, String> skill = new LinkedHashMap<String, String>();
		skill.put("Hibernate", "Hibernate");
		skill.put("Spring", "Spring");
		skill.put("Struts", "Struts");
		skill.put("Groovy", "Groovy");
		skill.put("Grails", "Grails");
		model.addAttribute("javaSkillList", skill);
*/

/*
		Map<String, String> country = new LinkedHashMap<String, String>();
		country.put("US", "United Stated");
		country.put("CN", "China");
		country.put("SG", "Singapore");
		country.put("MY", "Malaysia");
		model.addAttribute("countryList", country);
		*/
		//deberian exisiter 3s admin con esos ids
		
		List<Integer> estado = new ArrayList<Integer>();
		estado.add(0);
		estado.add(1);
		model.addAttribute("estadoList", estado);

	}

	


}

