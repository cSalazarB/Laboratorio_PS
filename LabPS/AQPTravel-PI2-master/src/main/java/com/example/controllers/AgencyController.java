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
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.dao.AdminDao;
import com.example.dao.AgenciaDao;
import com.example.dao.PaqueteDao;
import com.example.logic.Admin;
import com.example.logic.Agencia;
import com.example.logic.Agency;
import com.example.logic.Agency.BuildAgency;

import com.example.logic.Paquete;

@Controller
@SessionAttributes("iduser")
public class AgencyController {
	
	@Autowired
	AgenciaDao agenciaDao;
	@Autowired
	AdminDao ad;
	
	
	@RequestMapping(value="agencia/list_agencias",  method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	@ResponseBody
	public String listAgency(ModelAndView model,ModelMap mp) throws IOException{
		
		List<Agency> listAgency = agenciaDao.listAll();
	
		//Agencia agencia = new Agencia();
		
		String response="";
		int cont = 0;
		for(Agency tmpAgencia : listAgency){
			response += "<tr>" +
					"<td>" + (++cont) + "</td>" +
					"<td>" + tmpAgencia.getName() + "</td>" +
					"<td>" + tmpAgencia.getRuc() + "</td>" +
					"<td>" + tmpAgencia.getSocialReason() + "</td>";
			
			if(tmpAgencia.getState()== '1'){
				System.out.println("controller Agencia! "+tmpAgencia.getState());
				response += " <td> "
						+ "<input type='checkbox' name='' class=' ' id='' value='activo' onchange='changeCheckBoxAgencia("+tmpAgencia.getIdAgency()+", this)' checked>"
						+ "</td>";

			}else{
				response += " <td> "
						+ "<input type='checkbox' name='' class=' ' id='' value='desactivo' onchange='changeCheckBoxAgencia("+tmpAgencia.getIdAgency()+", this)' >"
						+ "</td>";
			}			
		}
		
		return response; 
	}
	
	
	//VALORACION DE PAQUETES POR AÑO
		@RequestMapping(value="agencia/list_valoracion",  method=RequestMethod.POST, produces="text/html;charset=UTF-8")
		@ResponseBody
		public String paquetesValoracion(ModelAndView model) throws IOException{
			
			List<Agency> listAgency = agenciaDao.listRate();	
			
			
			String response="";
			int cont = 0;
			String rate="";
		
			for(Agency tmpAgencia : listAgency){
				int r=tmpAgencia.getRate();
				
				for(int i=0;i<5;i++) {
					if(i<r) 
						rate=rate+"<span class=\"glyphicon glyphicon-star\" aria-hidden=\"true\" style='color: #f48f00;' ></span>";
					else {
						rate=rate+"<span class=\"glyphicon glyphicon-star-empty\" aria-hidden=\"true\"></span>";
					}
						
				}
				
				response += "<tr>" +
						"<td>" + (++cont) + "</td>" +
						"<td>" + tmpAgencia.getName() + "</td>" +
						"<td>" + tmpAgencia.getRuc() + "</td>" +
						"<td>" + tmpAgencia.getEmail() + "</td>" +
						"<td>"+rate+"</td>";
				
				rate="";
			}
			
			return response; 
		}
		
		
	
	
	
	
	@RequestMapping(value="admin/agencia/changeStateAgencia", method=RequestMethod.POST)
	@ResponseBody
	public String changeStateAdmin(HttpServletRequest request, ModelMap mp) throws IOException{
		String c=(String) mp.get("iduser");
		String []a1 = request.getParameterValues("key");	
		String []a2 = request.getParameterValues("state");
		Agency ag=agenciaDao.findById(Integer.parseInt(a1[0]));
		ag.set(ad.findAdminByEmail(c).getIdAdmin());
		agenciaDao.update(ag);
		agenciaDao.changeState(Integer.parseInt(a1[0]), a2[0].charAt(0));
		return "Se actualizo Estado";		
		
	}
	
	
	
	
	
	@RequestMapping(value="admin/agencia/updateAgencia", method=RequestMethod.POST)
	@ResponseBody 
	public ModelAndView updateAgencia(@RequestBody MultiValueMap<String,String> params) throws IOException{    
	



		BuildAgency a =new BuildAgency(params.getFirst("name"));
		a.setRuc(params.getFirst("ruc"));
		a.setSocialReason(params.getFirst("socialReason"));
		a.setEmail(params.getFirst("email"));
		a.setUbigeo(params.getFirst("ubigeo"));
		a.setDirecction(params.getFirst("address"));
		a.setRate(Integer.parseInt(params.getFirst("rate")));
		a.setDescription(params.getFirst("description"));
		a.setPhone(params.getFirst("phone"));
		a.setDayMod(Integer.parseInt(params.getFirst("dayMod")));
		a.setMonthMod(Integer.parseInt(params.getFirst("monthMod")));
		a.setYearMod(Integer.parseInt(params.getFirst("yearMod")));
		a.setCodAdmin(Integer.parseInt(params.getFirst("codAdmin")));
		a.setPassword(params.getFirst("password"));
		a.setState(params.getFirst("state").charAt(0));
		
		Agency agencia=new Agency(a);
		agencia.setIdAgency(Integer.parseInt(params.getFirst("idAgency")));
		agenciaDao.update(agencia);
		
		

		return new ModelAndView("redirect:../agencias"); 
		
	} 
	
	@RequestMapping(value="admin/agencia/saveAgencia", method=RequestMethod.POST)
	@ResponseBody 
	public String saveAgencia(@RequestBody MultiValueMap<String,String> params) throws IOException{    

		BuildAgency a =new BuildAgency(params.getFirst("nombreAgencia"));
		a.setRuc(params.getFirst("rucAgencia"));
		a.setSocialReason(params.getFirst("razonsocialAgencia"));
		a.setEmail(params.getFirst("emailAgencia"));
		a.setUbigeo(params.getFirst("ubigeoAgencia"));
		a.setDirecction(params.getFirst("direccionAgencia"));
		a.setRate(0);
		a.setDescription(params.getFirst("descripcionAgencia"));
		a.setPhone(params.getFirst("telefonoAgencia"));
		a.setDayMod(0);
		a.setMonthMod(0);
		a.setYearMod(0);
		a.setCodAdmin(1);
		a.setState('0');
		a.setPassword(params.getFirst("passAgencia"));
		Agency agencia=new Agency(a);
		agenciaDao.add(agencia);
		
		return "Listo, espera el mensaje de confirmación gracias";
	} 
	
//	admin/agencia/saveAgencia
//	 show update form
	@RequestMapping(value = "/admin/agencias/{id}/updateAgencia", method = RequestMethod.GET)
	public String updateAgencia(@PathVariable("id") int id, Model model) {

		//logger.debug("showUpdateUserForm() : {}", id);

		//User user = userService.findById(id);
		Agency tmpAgencia;
		
		tmpAgencia=agenciaDao.findById(id);
		
		model.addAttribute("agenciaForm", tmpAgencia);
		
		populateDefaultModel(model);
		
		return "updateAgencia";

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
		//l lista de valoracio
		List<Integer> numbers = new ArrayList<Integer>();
		numbers.add(1);
		numbers.add(2);
		numbers.add(3);
		numbers.add(4);
		numbers.add(5);

		model.addAttribute("numberList", numbers);
/*
		Map<String, String> country = new LinkedHashMap<String, String>();
		country.put("US", "United Stated");
		country.put("CN", "China");
		country.put("SG", "Singapore");
		country.put("MY", "Malaysia");
		model.addAttribute("countryList", country);
		*/
		//deberian exisiter 3s admin con esos ids
		Map<Integer, String> valoracion = new LinkedHashMap<Integer, String>();

		valoracion.put(1, "id Admin #1");
		valoracion.put(2, "id Admin #2");
		valoracion.put(3, "id Admin #3");

		model.addAttribute("valoracionList", valoracion);
		
		
		List<Character> estado = new ArrayList<Character>();
		estado.add('0');
		estado.add('1');

		model.addAttribute("estadoList", estado);

	}

	


}

