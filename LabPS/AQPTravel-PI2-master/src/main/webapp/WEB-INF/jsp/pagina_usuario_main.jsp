<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Administrador</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="<c:url value="/resources/css/jquery.dataTables.min.css"/> "
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.dataTables.min.js" />"></script>


<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script>
$(document).ready(function() {

	
    
} );

</script>



<script>
$(document).ready(function() {
	
	$.post("admin/list_paquetesRecientes",function(data){
		$('#list_paquete').html(data);
		$('#tablePaquete').DataTable();
	})
    
} );

</script>
<script>
$(document).ready(function() {
	
	$.post("agencia/list_valoracion",function(data){
		$('#list_valoracion').html(data);
		$('#table_valoracion').DataTable();
	})
    
} );

</script>

<link href="<c:url value="/resources/css/bootstrap.css"/> "
	rel="stylesheet" media="all">
<!-- Custom Theme files -->
<link href="<c:url value="/resources/css/style2.css"/> "
	rel="stylesheet" media="all">
<!--js-->

<!--icons-css-->
<link href="<c:url value="/resources/css/font-awesome.css"/> "
	rel="stylesheet" media="all">
<!--Google Fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Carrois+Gothic|Work+Sans:400,500,600"
	rel="stylesheet">
</script>
<!--scrolling js-->
<script src="<c:url value="/resources/js/jquery.nicescroll.js" />"></script>
<script src="<c:url value="/resources/js/scripts.js" />"></script>
<!--//scrolling js-->
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>

<script>
$(document).ready(function() {	
	
} );

</script>

<style type="text/css" media=screen>
.onoffswitch {
	position: relative;
	width: 83px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

.onoffswitch-checkbox {
	display: none;
}

.onoffswitch-label {
	display: block;
	overflow: hidden;
	cursor: pointer;
	border: 2px solid #999999;
	border-radius: 20px;
}

.onoffswitch-inner {
	display: block;
	width: 200%;
	margin-left: -100%;
	transition: margin 0.3s ease-in 0s;
}

.onoffswitch-inner:before, .onoffswitch-inner:after {
	display: block;
	float: left;
	width: 50%;
	height: 26px;
	padding: 0;
	line-height: 26px;
	font-size: 9px;
	color: white;
	font-family: Trebuchet, Arial, sans-serif;
	font-weight: bold;
	box-sizing: border-box;
}

.onoffswitch-inner:before {
	content: "Activo";
	padding-left: 10px;
	background-color: #5cb85c;
	color: #FFFFFF;
}

.onoffswitch-inner:after {
	content: "Desactivo";
	padding-right: 10px;
	background-color: #EEEEEE;
	color: #999999;
	text-align: right;
}

.onoffswitch-switch {
	display: block;
	width: 18px;
	margin: 4px;
	background: #FFFFFF;
	position: absolute;
	top: 0;
	bottom: 0;
	right: 53px;
	border: 2px solid #999999;
	border-radius: 20px;
	transition: all 0.3s ease-in 0s;
}

.onoffswitch-checkbox:checked+.onoffswitch-label .onoffswitch-inner {
	margin-left: 0;
}

.onoffswitch-checkbox:checked+.onoffswitch-label .onoffswitch-switch {
	right: 0px;
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
									 <a href="index_admin.html"> <h1>AqpTravel</h1> 
									<!--<img id="logo" src="" alt="Logo"/>--> 
								  </a> 								
							</div>
							
							<div class="clearfix"> </div>
					</div>
						 <div class="header-right">
							<div class="profile_details_left"><!--notifications of menu start -->
								<ul class="nofitications-dropdown">
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope fa-2x"></i><span class="badge">3</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>Tienes (3) mensajes nuevos</h3>
												</div>
											</li>
											<li><a href="#">
											   <div class="user_img"><img src="images/p4.png" alt=""></div>
											   <div class="notification_desc">
												<p>Jalar de BD mensaje</p>
												<p><span>Hace 1 hora</span></p>
												</div>
											   <div class="clearfix"></div>	
											</a></li>
											<li class="odd"><a href="#">
												<div class="user_img"><img src="images/p2.png" alt=""></div>
											   <div class="notification_desc">
												<p>Jalar de BD mensaje</p>
												<p><span>Hace 1 hora</span></p>
												</div>
											  <div class="clearfix"></div>	
											</a></li>
											<li><a href="#">
											   <div class="user_img"><img src="images/p3.png" alt=""></div>
											   <div class="notification_desc">
												<p>Jalar de BD mensaje</p>
												<p><span>Hace 2 horas</span></p>
												</div>
											   <div class="clearfix"></div>	
											</a></li>
											<li>
												<div class="notification_bottom">
													<a href="mensajes_admin.html">Ver Todos los mensajes</a>
												</div> 
											</li>
										</ul>
									</li>
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell fa-2x"></i><span class="badge blue">3</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>Tú tienes (JalarBD) Paquetes agregados</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="user_img"><img src="images/p5.png" alt=""></div>
											   <div class="notification_desc">
												<p>La agencia (JalarBD) agregó nuevo paquete</p>
												<p><span>Hace una hora</span></p>
												</div>
											  <div class="clearfix"></div>	
											 </a></li>
											 <li class="odd"><a href="#">
												<div class="user_img"><img src="images/p6.png" alt=""></div>
											   <div class="notification_desc">
												<p>La agencia (JalarBD) agregó nuevo paquete</p>
												<p><span>Hace 1 hora</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li><a href="#">
												<div class="user_img"><img src="images/p7.png" alt=""></div>
											   <div class="notification_desc">
												<p>La agencia (JalarBD) agregó nuevo paquete</p>
												<p><span>Hace 1 hora</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li>
												<div class="notification_bottom">
													<a href="#">Ver todas las Notificaciones</a>
												</div> 
											</li>
										</ul>
									</li>	
										
								</ul>
								<div class="clearfix"> </div>
							</div>
                            
							<!--notification menu end -->
							<div class="profile_details">		
								<ul>
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												<span class="prfil-img"><img src="images/p1.png" alt=""> </span> 
												<div class="user-name">
													<p>${iduser}</p>
													<span>Administrador</span>
												</div>
												<i class="fa fa-angle-down lnr"></i>
												<i class="fa fa-angle-up lnr"></i>
												<div class="clearfix"></div>	
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu"> 
											<li> <a href="#"><i class="fa fa-sign-out"></i>Cerrar Sesi&oacute;n</a> </li>
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
<!--inner block start here-->
<div class="inner-block">
<!--market updates updates-->
	 <div class="market-updates">
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-1">
					<div class="col-md-8 market-update-left">
						<h3>100</h3>
						<h4>Usuarios Registrados</h4>
						<p>Más información en Reportes</p>
					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-file-text-o"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-2">
				 <div class="col-md-8 market-update-left">
					<h3>135</h3>
					<h4>Visitas el día de hoy</h4>
					<p>Jalar la fecha</p>
				  </div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-eye"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-3">
					<div class="col-md-8 market-update-left">
						<h3>23</h3>
						<h4>Nuevos Mensajes</h4>
						<p>Pendientes de Lectura</p>
					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-envelope-o"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
		   <div class="clearfix"> </div>
		</div>
<!--market updates end here-->
<!--mainpage chit-chating-->
<div class="chit-chat-layer1">
	<div class="col-md12 chit-chat-layer1-left">
               <div class="work-progres">
                            <div class="chit-chat-heading">
                                  Paquetes Turísticos Agregados Recientemente 	
                              <p> &nbsp </p>			  
                            </div>
                            
                            <!-- div class="table-responsive">
                                <table id="tablePaquete" class="table table-hover">
                                  <thead>
                                    <tr>
                                      <th>ID</th>
                                      <th>Paquete </th>
                                      <th>Agencia</th>
                                      <th>Estado</th>
                                      
                                  </tr>
                              </thead>
                              <tbody>
                              
                              <tbody id="list_paquete">
                              
                              
                              
                              
                              
                              
                                < tr>
                                  <td>1</td>
                                  <td>JalarNombrePaq</td>
                                  <td>JalarNombreAgen</td>                                 
                                                             
                                  <td><span class="label label-danger">Desactivado</span></td>
                                  
                              </tr>
                            
                          </tbody>
                      </table>
                  </div-->
                  				<div class="table-responsive">
									<table id="tablePaquete" class="table table-hover display"
										cellspacing="0" width="100%">

										<thead>
											<tr>
												<th>Nro.</th>
												<th>Nombre de Paquete Tur&iacute;stico</th>
												<th>Agencia Tur&iacute;stica</th>												
												<th>Fecha de Creaci&oacute;n</th>

											</tr>

										</thead>
										<tfoot>
											<tr>
												<th>Nro.</th>
												<th>Nombre de Paquete Tur&iacute;stico</th>
												<th>Agencia Tur&iacute;stica</th>											
												<th>Destino</th>


											</tr>
										</tfoot>
										<tbody id="list_paquete">

										</tbody>
									</table>



								</div>
             </div>
      </div>
   
     <div class="clearfix"> </div>
</div>
<!--main page chit chating end here-->

<!--main page chart start here-->
<div class="main-page-charts">
   <div class="main-page-chart-layer1">
		<!-- div class="col-md-12 chart-layer1-left"> 
			<div class="glocy-chart">
			<div class="span-2c">  
                        <h3 class="tlt">Estad&iacute;sticas de Reservas</h3>
                        <canvas id="bar" height="300" width="400" style="width: 400px; height: 300px;"></canvas>
                        <script>
                            var barChartData = {
                            labels : ["Ene","Feb","Mar","Abr","May","Jun","jul"],
                            datasets : [
                                {
									//Jala visitas al sitio del mes
                                    fillColor : "#FC8213",
                                    data : [65,59,90,81,56,55,40]
                                },
                                {
									//Jala reservas en el sitio del mes
                                    fillColor : "#337AB7",
                                    data : [28,48,40,19,96,27,100]
                                }
                            ]

                        };
                            new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);

                        </script>
                    </div> 			  		   			
			</div>
		</div-->
        <!--ACA TERMINA LAS ESTADISTICAS-->
		<div class="col-md-12 chart-layer1-right"> 
			<div class="work-progres">
                            <div class="chit-chat-heading">
                              
                                  Top 5 Rating de Agencias Registradas 

                              <p> &nbsp </p>	
  
                            </div>
                            
                  				<div class="table-responsive">
									<table id="table_valoracion" class="table table-hover display"
										cellspacing="0" width="100%">

										<thead>
											<tr>
											
			                                      <th>Puesto</th>			                         
			                                      <th>Agencia</th>
			                                      <th> RUC </th>
			                                      <th>Email </th>
			                                      <th>Rating</th>
                                      
											</tr>

										</thead>

										<tbody id="list_valoracion">

                                <tr>
                                  <td>1</td>
                                  <td>JalarCodigoAg</td>
                                  <td>JalarNombreAgen</td>                                 
                                  <!--ACA SACAN EL PONDERADO DEL RATING Y LO PONEN EN VEZ DEL 60%-->
                                  <td><div class="progress">
        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%"></div>
      </div></td>
                                  
                              </tr>



               
										</tbody>
									</table>



								</div>
             </div>
		</div>
	 <div class="clearfix"> </div>
  </div>
 </div>
<!--main page chart layer2-->

</div>
<!--inner block end here-->
<!--copy rights start here-->
<div class="copyrights">
	 <p>© 2017 AQPTravel Todos los derechos Reservados | Dise&ntilde;ado por  <a href="http://tecsofts.com/" target="_blank">TecSoft</a> </p>
</div>	
<!--COPY rights end here-->
</div>
</div>

<!--slider menu-->
    <div class="sidebar-menu">
		  	<div class="logo"> <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="#"> <span id="logo" ></span> 
			      <!--<img id="logo" src="" alt="Logo"/>--> 
			  </a> </div>		  
		    <div class="menu">
		      <ul id="menu" >
		        <li id="menu-home" ><a href="admin"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
		        <li><a href="admin/mensajes"><i class="fa fa-envelope"></i><span>Mensajes</span></a>
		         
		        </li>
		        <li id="menu-comunicacao" ><a href="#"><i class="fa fa-cogs"></i><span>Configuraciones</span><span class="fa fa-angle-right" style="float: right"></span></a>
                <ul>
		            <li><a href="admin/users">Usuarios</a></li>
		            <li><a href="admin/agencias">Agencias Tur&iacute;sticas</a></li>	
                    <li><a href="admin/paquetes">Paquetes Tur&iacute;sticas</a></li>	
                    <li><a href="admin/destinos">Sitios Turisticos</a></li>            
		          </ul>
		        </li>
		          <li><a href="#"><i class="fa fa-book nav_icon"></i><span>Reportes</span></a></li>
		       
		        
		      </ul>
		    </div>
	 </div>
	<div class="clearfix"> </div>
</div>
<!--slide bar menu end here-->
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
</script>
<!--scrolling js-->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!--//scrolling js-->
<script src="js/bootstrap.js"> </script>
<!-- mother grid end here-->
</body>