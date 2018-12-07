<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Administrador</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<link href="<c:url value="/resources/css/style2.css"/> "
	rel="stylesheet" media="all">
<!--js-->
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<!--icons-css-->
<link href="<c:url value="/resources/css/font-awesome.css"/> "
	rel="stylesheet" media="all">
<!--Google Fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Carrois+Gothic|Work+Sans:400,500,600"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Ruda"
	rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css"/> "
	rel="stylesheet" media="all">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css"
	rel="stylesheet" media="all">
	
<link href="<c:url value="/resources/css/bootstrap.css"/> "
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/css/bootstrap-datetimepicker.min.css"/>"
	rel="stylesheet">
<!--scrolling js-->
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.nicescroll.js" />"></script>
<script src="<c:url value="/resources/js/scripts.js.js" />"></script>
<!--//scrolling js-->
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>

<script>
    $(function() {
        $('#ms').change(function() {
            console.log($(this).val());
        }).multipleSelect({
            width: '100%'
        });
    });
</script>



<style type="text/css" media=screen>
	.btn span.fa {    			
		opacity: 0;				
	}
	.btn.active span.fa {				
		opacity: 1;				
	}
	.help-block{
		font-size:12px;
	}
	.col-md-3.control-label {
		font-size:13px;
	}
	
</style>	

</head>
<body>	
<div class="page-container">	
   <div class="left-content">
	   <div class="mother-grid-inner">
            <!--header start here-->
				<div class="header-main">
					<div class="header-left">
							<div class="logo-name">
									 <a href="index_admin.html"> <h1>AQPTravel</h1> 
									<!--<img id="logo" src="" alt="Logo"/>--> 
								  </a> 								
							</div>
							
							<div class="clearfix"> </div>
					</div>
							<!--notification menu end -->
							<div class="profile_details">		
								<ul>
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												
												<div class="user-name">
													<p>${iduser}</p>
													<span>Agencia</span>
												</div>
												<i class="fa fa-angle-down lnr"></i>
												<i class="fa fa-angle-up lnr"></i>
												<div class="clearfix"></div>	
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu"> 
											<li> <a href="../index"><i class="fa fa-sign-out"></i>Cerrar Sesi&oacute;n</a> </li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="clearfix"> </div>				
						</div>
				     <div class="clearfix"> </div>	
				</div>
<!--heder end here-->
<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
		<!-- /script-for sticky-nav -->
        
        
        
<!--ACA LLENAN USTEDES-->
<div class="inner-block">
    <div class="blank">
    	<div class="work-progres">
    	
    		<form id="form_regPaquete" >
    			<div class="panel panel-default" style=" font-family: 'Ruda', sans-serif;">
    				<div class="panel-heading" style="border-bottom:solid #CCC 1px; padding-top:25px; padding-left:25px">
                    	<h3 class="panel-title"><strong style="font-size:30px">Agregar Nuevo Producto </strong> Formulario</h3>   
                    </div>
                    <div class="panel-body">
                    	<div class="col-md-6">
                    		<fieldset>
                                        <legend> Datos del Producto </legend>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Nombre del Paquete</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="nombrePaquete" id="nombrePaquete"  maxlength="70" required/>
                                                    </div>                                            
                                                    <span class="help-block">Ingrese el Nombre del Paquete a Agregar</span>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
													<label class="col-md-3 control-label">Tipo de
														Paquete</label>
													<div class="col-md-9">
														<select class="form-control select" name="tipoPaquete">
															<option value="Aventura">Aventura</option>
															<option value="Naturaleza">Naturaleza</option>
															<option value="Historia y cultura">Historia y
																cultura</option>
															<option value="Descanso y relax">Descanso y
																relax</option>
															<option value="Entretenimiento">Entretenimiento</option>
															<option value="Turismo">Turismo</option>
														</select> <span class="help-block">Seleccione el tipo de
															paquete</span>
													</div>
												</div>
												
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Duraci&oacute;n del Paquete</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                        <input type="text" class="form-control" placeholder="--/--/--" name="duracionPaquete" id="duracionPaquete" readonly />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese la duraci&oacute;n del Paquete a Agregar</span>
                                                </div>
                                            </div>
                                            
                                            <!--Aqui se llena la lista con la base de datos-->
                                          
                                          <div class="form-group">
													<label for="num_personas" class="col-md-3 control-label">Nro.
														Personas: </label>
													<div class="col-md-9">
														<select id="num_ni�os" name="capacidadPaquete"  
															class="form-control">
															<option value="1" selected>1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
														</select> <span class="help-block">Ingrese el numero
															m&oacute;aximo de Personas</span>
													</div>
												</div>
												
												
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Imagen 1</label>
                                                <div class="col-md-9">                                                                                                                                        
                                                    <input type="file" class="fileinput btn" name="imagen1" id="imagen1" title="Browse file" style="font-size:13px"/>
                                                    <span class="help-block">Cargue la Imagen 1 a mostrar del Paquete</span>
                                                </div>
                                            </div>
                                            
                                              <div class="form-group">
                                                <label class="col-md-3 control-label">Imagen 2</label>
                                                <div class="col-md-9">                                                                                                                                        
                                                    <input type="file" class="fileinput btn" name="imagen2" id="imagen2" title="Browse file" style="font-size:13px"/>
                                                    <span class="help-block">Cargue la Imagen 2 a mostrar del Paquete</span>
                                                </div>
                                            </div>
                                            
                                            
                                            
                                            <!--Aqui se llena la lista de los destinos turiticos para seleccionar varios(getselects metodo para obtener la lista de seleccionados http://wenzhixin.net.cn/p/multiple-select/docs/#constructor)-->
                                            
                                          <div class="form-group">
													<label class="col-md-3 control-label">Destino de
														Paquete</label>
													<div class="col-md-9" style="font-size: 13px">

														<select id="multiselectDestino" name="multiselectDestinos" class="form-control" multiple="multiple"
															title="Choose one of the following...">
														
															
														</select> <span class="help-block">Seleccione los destinosturisticos del paquete</span>
													
													</div>
												</div>
                                         
                        	</fieldset>
                        	
                        	<fieldset>
                                <legend>Precio y Stock </legend>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Precio Paquete: S/.</label>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa  fa-usd"></span></span>
                                                        <input type="text" id="precioPaquete" class="form-control" name="precioPaquete" maxlength="5" pattern="+[1-9]*[0-9]{3}\\+.*[0.9]{2}">                                            
                                                    </div>
                                                    <span class="help-block">Ingrese precio sin Descuentos</span>
                                                </div>
                                            </div>
                                            
                                            
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Precio Descuento: S/.</label>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa  fa-usd"></span></span>
                                                        <input type="text" name="precioOferta" id="precioOferta" class="form-control"  maxlength="5" pattern="+[1-9]*[0-9]{3}\\+.*[0.9]{2}">                                            
                                                    </div>
                                                    <span class="help-block">Ingrese precio para Decuentos</span>
                                                </div>
                                            </div>
                                            
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Stock</label>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-refresh"></span></span>
                                                        <input type="text" class="form-control" id="stockPaquete" name="stockPaquete" maxlength="5" pattern="[0-9]">                                            
                                                    </div>
                                                    <span class="help-block">Ingrese Stock actual del Paquete</span>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                            	<label class="col-md-3 control-label">Oferta</label>
                                                <div class="col-md-9">     
                                                	<div class="btn-group" data-toggle="buttons">			
														<label class="btn btn-success active" id="labelOferta">
															<input type="checkbox" value="1" autocomplete="off" id="ofertaPaquete" checked>
															<span class="fa fa-check"></span>
															
														</label>
														<span class="input-group-addon" style="font-size:16px;height:34px;"> &nbsp;&nbsp;Seleccione si est&aacute; en Oferta</span>
													</div>
                                                    <span class="help-block">secci&oacute;n oferta</span>
                                                </div>
                                            </div>
                                            
                                           
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Duraci&oacute;n de Oferta</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                        <input type="text" class="form-control" placeholder="--/--/--" name="duracionOfertaPaquete" id="duracionOfertaPaquete" readonly />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese la duraci&oacute;n de la Oferta del Paquete</span>
                                                </div>
                                            </div>
                                       
                        	</fieldset>
                        	
                    	</div>
                    	
                    	<div class="col-md-6">
                    		<fieldset>
	                    		<legend> Descripci&oacute;n General </legend>
	                    		<div class="form-group">
	                            	<label class="col-md-3 control-label">Descripci&oacute;n del Paquete</label>
	                              	<div class="col-md-9 col-xs-12">                                            
	                                	<textarea class="form-control" rows="6" name="descripcionPaquete" maxlength="65530"></textarea>
	                                    <span class="help-block">Ingrese la descripción detallada del Paquete</span>
	                              	</div>
	                          	</div>
	                          	
	                          	<div class="form-group">
	                            	<label class="col-md-3 control-label">Itinerario del Paquete</label>
	                              	<div class="col-md-9 col-xs-12">                                            
	                                	<textarea class="form-control" rows="10" name="itinerarioPaquete" maxlength="220"></textarea>
	                                    <span class="help-block">Ingrese el itinerario del Paquete</span>
	                              	</div>
	                          	</div>
	                          	
	                          	<div class="form-group">
	                            	<label class="col-md-3 control-label">Recomendaciones del Paquete</label>
	                              	<div class="col-md-9 col-xs-12">                                            
	                                	<textarea class="form-control" rows="6" name="recomendacionesPaquete" maxlength="220"></textarea>
	                                    <span class="help-block">Ingrese las recomendaciones del Paquete</span>
	                              	</div>
	                          	</div>
	                          	
	                          	<div class="form-group">
	                            	<label class="col-md-3 control-label" >Servicios incluidos en el Paquete</label>
	                              	<div class="col-md-9 col-xs-12">                                            
	                                	<textarea class="form-control" rows="6" name="serviciosPaquete" maxlength="220"> </textarea>
	                                    <span class="help-block">Ingrese los servicios incluidos en el Paquete</span>
	                              	</div>
	                          	</div>
                    		</fieldset>
                          	
                    	</div>
                    	
                    </div>
    				<div class="panel-footer">
    				<button class="btn btn-default">Limpiar</button>
    				<button class="btn btn-default" onClick="regresar()">Regresar</button>
    				<button type="button" class="btn btn-primary pull-right"  onclick="addPaquete()" >Registrar</button>
                   	 	</div>
    			</div>
    		</form>
    		
    		
    	</div>
    </div>
</div>
<!--inner block end here-->




<!--copy rights start here-->
<div class="copyrights">
	 <p>© 2017 AQPTravel Todos los derechos Reservados | Dise&ntilde;ado por  <a href="http://tecsofts.com/" target="_blank">TecSoft</a> </p>
</div>	
<!--COPY rights end here-->
</div>
</div>
<script src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js"/>"></script>

<script>
$(document).ready(function() {
	
    $('#multiselectDestino').multiselect({
    	includeSelectAllOption: true,
    	nonSelectedText: 'selecciona los destinos',
    	enableFiltering: true,
    	enableCaseInsensitiveFiltering:true,
    	buttonWidth:'380px',  	
    	
    }); 
    
    $.post("getDestinos",function(data){    	
    	$("#multiselectDestino").html(data);
    	$('#multiselectDestino').multiselect('rebuild');
	});
    
      
    
});
</script>
<script>
var toggle = true;
            
$(".sidebar-icon").click(function() {                
  if (toggle)
  {
    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
    $("#menu span").css({"position":"absolute"});
  }
  else
  {
    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
    setTimeout(function() {
      $("#menu span").css({"position":"relative"});
    }, 400);
  }               
                toggle = !toggle;
            });
            
$("#duracionPaquete").datetimepicker({
	format : 'yyyy-mm-dd',
	minView : 2,
	autoclose : 1
});

$("#duracionOfertaPaquete").datetimepicker({
	format : 'yyyy-mm-dd',
	minView : 2,
	autoclose : 1
});

$("#labelOferta").click(function() {
	if($("#ofertaPaquete").attr('checked')) {		
		$('#ofertaPaquete').attr('checked', false);
		$('#ofertaPaquete').val('0');
	}	
	else {		
		$('#ofertaPaquete').attr('checked', true);
		$('#ofertaPaquete').val('1');
	}
	
});

</script>
<!-- mother grid end here-->

<script src="<c:url value="/resources/js/paquete.js" />"></script>
<script type="text/javascript">
	
	$(function() {
	    $('input[type=text]').on('keypress', function(e) {
	        if (e.which == 32){
	        	if($(this).val().length==0)return false;
	        }	            
	    });
	});
	
	$(function() {
		$('textarea').on('keypress', function(e) {
	        if (e.which == 32){
	        	if($(this).val().length==0)return false;
	        }	            
	    });
	});
	
	</script>
</body>


</html>                     
