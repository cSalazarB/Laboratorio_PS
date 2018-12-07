<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Administrador Mensajes</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="<c:url value="/resources/css/bootstrap.css"/> " rel="stylesheet" 	media="all">
<!-- Custom Theme files -->
<link href="<c:url value="/resources/css/style2.css"/> " rel="stylesheet" 	media="all">
<!--js-->
<script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script> 
<!--icons-css-->
<link href="<c:url value="/resources/css/font-awesome.css"/> " rel="stylesheet" 	media="all">
<!--Google Fonts-->
<link href="https://fonts.googleapis.com/css?family=Carrois+Gothic|Work+Sans:400,500,600" rel="stylesheet">
<!--scrolling js-->
		<script src="<c:url value="/resources/js/jquery.nicescroll.js" />"></script>
		<script src="<c:url value="/resources/js/scripts.js" />"></script>
		<!--//scrolling js-->
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>

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
											   <div class="user_img"><img src="images/p4.png" alt="gdfgdf"></div>
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
													<p>Admin1</p>
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
        
        
        
<!--ACA LLENAN USTEDES-->

<div class="inner-block">
    <div class="inbox">
    	  <h2>Inbox</h2>
    	 <div class="col-md-4 compose">   	 	
    	 	<div class="mail-profile">
    	 		<div class="mail-pic">
    	 			<a href="#"><img src="images/b3.png" alt=""></a>
    	 		</div>
    	 		<div class="mailer-name"> 			
    	 				<h5><a href="#">Admin1</a></h5>  	 				
    	 			     <h6><a href="mailto:info@example.com">malorum@gmail.com</a></h6>   
    	 		</div>
    	 	    <div class="clearfix"> </div>
    	 	</div>
    	 	<div class="compose-block">
    	 		<a href="responder_admin.html">Nuevo Mensaje</a>
    	 	</div>
    	 	<div class="compose-bottom">
    	 		  <nav class="nav-sidebar">
					<ul class="nav tabs">
			          <li class="active"><a href="mensajes_admin.html" data-toggle="tab"><i class="fa fa-inbox"></i>Bandeja de entrada <div class="clearfix"></div></a></li>
			          
			          
			                                   
					</ul>
				</nav>
    	 	</div>
    	 </div>
    	 <div class="col-md-8 mailbox-content  tab-content tab-content-in">
    	 	<div class="tab-pane active text-style" id="tab1">
	    	 	<div class="mailbox-border">
	               <div class="mail-toolbar clearfix">
				     <div class="float-left">
				        <div class="btn btn_1 btn-default mrg5R">
				           <i class="fa fa-refresh"> </i>
				        </div>
				           <a class="btn btn-danger" href="#">
  								<i class="fa fa-trash-o fa-lg"></i> Eliminar Seleccionados</a>
				       
				        
				        <div class="clearfix"> </div>
				    </div>
				    <div class="float-right">
                    
                    			<!--ACTUALIZAR ESTO CON BD-->
                                
	                            <span class="text-muted m-r-sm">Mostrar 10 of 200   &nbsp;&nbsp;&nbsp;   </span>
	                          
	                            <div class="btn-group">
	                                <a class="btn btn-default"><i class="fa fa-angle-left"></i></a>
	                                <a class="btn btn-default"><i class="fa fa-angle-right"></i></a>
	                            </div>	
	                       <div class="clearfix"> </div>		        
				    </div>
	               </div>
                   
                   <!--ESTA TABLA SE LLENA CON LA TABLA MENSAJES Y UN FOR SOLO NECESITARIAN UN <TR> -->
	                <table class="table tab-border">
	                    <tbody>
	                        <tr class="unread checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                            
	                            <td class="hidden-xs">
	                                Google
	                            </td>
	                            <td>
	                                Lorem Ipsum is simply
	                            </td>
	                          
	                            <td>
	                                12 march
	                            </td>
                                 <td>
                                	<a class="btn btn-success" href="responder_admin.html" aria-label="Delete">
  										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</a>
                                	<a class="btn btn-danger" href="eliminar_msj_admin.html" aria-label="Delete">
  										<i class="fa fa-trash-o" aria-hidden="true"></i>
									</a>
	                            </td>
	                        </tr>
	                        <tr class="unread checked">
	                            <td class="hidden-xs">
	                            	<input type="checkbox" class="checkbox">
	                            </td>
	                            
	                            </td>
	                            <td class="hidden-xs">
	                                Dropbox
	                            </td>
	                            <td>
	                                Consectetuer adipiscing elit
	                            </td>
	                        
	                            <td>
	                                02 march
	                            </td>
                                
                                <td>
                                	<a class="btn btn-success" href="responder_admin.html" aria-label="Delete">
  										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</a>
                                	<a class="btn btn-danger" href="eliminar_msj_admin.html" aria-label="Delete">
  										<i class="fa fa-trash-o" aria-hidden="true"></i>
									</a>
	                            </td>
	                        </tr>
	                        <tr class="unread checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                            
	                            <td class="hidden-xs">
	                                Adobe
	                            </td>
	                            <td>
	                                Nemo enim ipsam voluptatem
	                            </td>
	                          
	                            <td>
	                                8 march
	                            </td>
                                 <td>
                                	<a class="btn btn-success" href="responder_admin.html" aria-label="Delete">
  										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</a>
                                	<a class="btn btn-danger" href="eliminar_msj_admin.html" aria-label="Delete">
  										<i class="fa fa-trash-o" aria-hidden="true"></i>
									</a>
	                            </td>
	                        </tr>
	                        <tr class="unread checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                            
	                            <td class="hidden-xs">
	                                Apple
	                            </td>
	                            <td>
	                                Hai Neha.How are You
	                            </td>
	                       
	                            <td>
	                                4 march
	                            </td>
                                 <td>
                                	<a class="btn btn-success" href="responder_admin.html" aria-label="Delete">
  										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</a>
                                	<a class="btn btn-danger" href="eliminar_msj_admin.html" aria-label="Delete">
  										<i class="fa fa-trash-o" aria-hidden="true"></i>
									</a>
	                            </td>
	                        </tr>
	                        <tr class="read checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                            
	                            <td class="hidden-xs">
	                                Microsoft
	                            </td>
	                            <td>
	                                Nemo enim ipsam voluptatem
	                            </td>
	                          
	                            <td>
	                                1 march
	                            </td>
                                 <td>
                                	<a class="btn btn-success" href="responder_admin.html" aria-label="Delete">
  										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</a>
                                	<a class="btn btn-danger" href="eliminar_msj_admin.html" aria-label="Delete">
  										<i class="fa fa-trash-o" aria-hidden="true"></i>
									</a>
	                            </td>
	                        </tr>
	                        <tr class="read checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                            
	                            <td class="hidden-xs">
	                                Microsoft
	                            </td>
	                            <td>
	                                Lorem ipsum dolor sit amet
	                            </td>
	    
	                            <td>
	                                15 march
	                            </td>
                                 <td>
                                	<a class="btn btn-success" href="responder_admin.html" aria-label="Delete">
  										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</a>
                                	<a class="btn btn-danger" href="eliminar_msj_admin.html" aria-label="Delete">
  										<i class="fa fa-trash-o" aria-hidden="true"></i>
									</a>
	                            </td>
	                        </tr>
	                        <tr class="read checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                            
	                            <td class="hidden-xs">
	                                Microsoft
	                            </td>
	                            <td>
	                                Nemo enim ipsam voluptatem
	                            </td>
	                
	                            <td>
	                                16 march
	                            </td>
                                 <td>
                                	<a class="btn btn-success" href="responder_admin.html" aria-label="Delete">
  										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</a>
                                	<a class="btn btn-danger" href="eliminar_msj_admin.html" aria-label="Delete">
  										<i class="fa fa-trash-o" aria-hidden="true"></i>
									</a>
	                            </td>
	                        </tr>
	                        <tr class="read checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                           
	                            <td class="hidden-xs">
	                                Microsoft
	                            </td>
	                            <td>
	                                Lorem Ipsum is simply
	                            </td>
	                       
	                            <td>
	                                9 march
	                            </td>
                                 <td>
                                	<a class="btn btn-success" href="responder_admin.html" aria-label="Delete">
  										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</a>
                                	<a class="btn btn-danger" href="eliminar_msj_admin.html" aria-label="Delete">
  										<i class="fa fa-trash-o" aria-hidden="true"></i>
									</a>
	                            </td>
	                        </tr>
	                        <tr class="read checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                            
	                            <td class="hidden-xs">
	                                Microsoft
	                            </td>
	                            <td>
	                                Consectetuer adipiscing elit
	                            </td>
	                            <td>
	                                16 march
	                            </td>
                                 <td>
                                	<a class="btn btn-success" href="responder_admin.html" aria-label="Delete">
  										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</a>
                                	<a class="btn btn-danger" href="eliminar_msj_admin.html" aria-label="Delete">
  										<i class="fa fa-trash-o" aria-hidden="true"></i>
									</a>
	                            </td>
	                        </tr>
	                        <tr class="read checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                            
	                            <td class="hidden-xs">
	                                Dropbox
	                            </td>
	                            <td>
	                                Nemo enim ipsam voluptatem
	                            </td>
	                            <td>
	                                10 march
	                            </td>
                                 <td>
                                	<a class="btn btn-success" href="responder_admin.html" aria-label="Delete">
  										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</a>
                                	<a class="btn btn-danger" href="eliminar_msj_admin.html" aria-label="Delete">
  										<i class="fa fa-trash-o" aria-hidden="true"></i>
									</a>
	                            </td>
	                        </tr>
	                        <tr class="read checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                           
	                            <td class="hidden-xs">
	                                Dropbox
	                            </td>
	                            <td>
	                                Lorem ipsum dolor sit amet
	                            </td>
	         
	                            <td>
	                                14 march
	                            </td>
                                 <td>
                                	<a class="btn btn-success" href="responder_admin.html" aria-label="Delete">
  										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</a>
                                	<a class="btn btn-danger" href="eliminar_msj_admin.html" aria-label="Delete">
  										<i class="fa fa-trash-o" aria-hidden="true"></i>
									</a>
	                            </td>
	                        </tr>
	                        <tr class="read checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                            
	                            <td class="hidden-xs">
	                                Dropbox
	                            </td>
	                            <td>
	                                Nemo enim ipsam voluptatem
	                            </td>
	
	                            <td>
	                                11 march
	                            </td>
                                 <td>
                                	<a class="btn btn-success" href="responder_admin.html" aria-label="Delete">
  										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</a>
                                	<a class="btn btn-danger" href="eliminar_msj_admin.html" aria-label="Delete">
  										<i class="fa fa-trash-o" aria-hidden="true"></i>
									</a>
	                            </td>
	                        </tr>
	                       
	                    </tbody>
	                </table>
	               </div>   
               </div>
               <div class="tab-pane text-style" id="tab2">
	    	 	<div class="mailbox-border">
	               <div class="mail-toolbar clearfix">
				     <div class="float-left">
				        <div class="btn btn_1 btn-default mrg5R">
				           <i class="fa fa-refresh"> </i>
				        </div>
				       
				        <div class="clearfix"> </div>
				    </div>
				    <div class="float-right">
                    
                    			<!--ACTUALIZAR TOTAL CON BD--> 
                                
	                            <span class="text-muted m-r-sm">Mostrar 10 de 100  &nbsp;&nbsp;&nbsp;   </span>
	                            
	                            <div class="btn-group">
	                                <a class="btn btn-default"><i class="fa fa-angle-left"></i></a>
	                                <a class="btn btn-default"><i class="fa fa-angle-right"></i></a>
	                            </div>	
	                       <div class="clearfix"> </div>		        
				    </div>
	               </div>
	                <table class="table tab-border">
	                    <tbody>
	                       
	                        <tr class="unread checked">
	                            <td class="hidden-xs">
	                            	<input type="checkbox" class="checkbox">
	                            </td>
	                            
	                            <td class="hidden-xs">
	                                Dropbox
	                            </td>
	                            <td>
	                                Consectetuer adipiscing elit
	                            </td>
	                  
	                            <td>
	                                02 march
	                            </td>
	                        </tr>
	                        <tr class="unread checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                           
	                            <td class="hidden-xs">
	                                Adobe
	                            </td>
	                            <td>
	                                Nemo enim ipsam voluptatem
	                            </td>
	                  
	                            <td>
	                                8 march
	                            </td>
	                        </tr>
	                        <tr class="unread checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                            <td class="hidden-xs">
	                                Apple
	                            </td>
	                            <td>
	                                Hai Neha.How are You
	                            </td>
	                      
	                            <td>
	                                4 march
	                            </td>
	                        </tr>
	                        <tr class="read checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                            
	                            <td class="hidden-xs">
	                                Microsoft
	                            </td>
	                            <td>
	                                Nemo enim ipsam voluptatem
	                            </td>
	                       
	                            <td>
	                                1 march
	                            </td>
	                        </tr>
	                        
	                        
	                                                
	                    </tbody>
	                </table>
	               </div>   
               </div>
               
               
               
            </div>
          <div class="clearfix"> </div>     
   </div>
</div>




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
		        <li id="menu-home" ><a href="../admin"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
		        <li><a href="../admin/mensajes"><i class="fa fa-envelope"></i><span>Mensajes</span></a>
		         
		        </li>
		        <li id="menu-comunicacao" ><a href="#"><i class="fa fa-cogs"></i><span>Configuraciones</span><span class="fa fa-angle-right" style="float: right"></span></a>
                <ul>
		            <li><a href=../admin/users>Usuarios</a></li>
		            <li><a href="../admin/agencias">Agencias Tur&iacute;sticas</a></li>	
                    <li><a href="../admin/paquetes">Paquetes Tur&iacute;sticas</a></li>
                    <li><a href="../admin/destinos">Sitios Tur&iacute;sticos</a></li>	
                    <li><a href="#">Restaurar Informaci&oacute;n</a></li>            
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

<!-- mother grid end here-->
</body>
</html>                     
