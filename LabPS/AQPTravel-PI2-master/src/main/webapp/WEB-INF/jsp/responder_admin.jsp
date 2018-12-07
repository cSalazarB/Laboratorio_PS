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
    	  <h2>Bandeja de Entrada</h2>
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
    	 	
    	 	<div class="compose-bottom">
    	 		  <nav class="nav-sidebar">
					<ul class="nav tabs">
			          <li class="active"><a href="mensajes_admin.html" data-toggle="tab"><i class="fa fa-inbox"></i>Bandeja de entrada <div class="clearfix"></div></a></li>
			          
			          
			                                   
					</ul>
				</nav>
    	 	</div>
    	 </div>
         
         <div class="col-md-8 compose-right">
					<div class="inbox-details-default">
						<div class="inbox-details-heading">
							Asunto del mensaje a responder 
						</div>
						
						<div class="inbox-details-body">
							<div class="portlet-grid panel-warning" style="width:100%">
							  <div class="panel-heading">
							    <h3 class="panel-title"><strong>Nombre del Usuario</strong></h3>
							    <p>elcorreo@gmail.com</p>
							  </div>
							  <div class="panel-body">
							          Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam.
							          Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam.
							          Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam.
							          Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam.
							          Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam.
							  </div>
							</div>
							<form class="com-mail" action="mailto:dianac.pauca@gmail.com">
                            	<!--ACA RECIBE EL CORREO ENVIADO AL MOMENTO DE DAR CLICK EN RESPONDER, SI SE DIO CLICK EN NUEVO MENSAJE ESTE CAMPO ESTA EN BLANCO-->
								
								
								<textarea rows="6"  value="Mensaje" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Click Aquí para Responder Mensaje </textarea>
								
								<input type="submit" value="Enviar Mensaje"> 
							</form>
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
		        <li id="menu-home" ><a href="index.html"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
		        <li><a href="#"><i class="fa fa-envelope"></i><span>Mensajes</span></a>
		         
		        </li>
		        <li id="menu-comunicacao" ><a href="#"><i class="fa fa-cogs"></i><span>Configuraciones</span><span class="fa fa-angle-right" style="float: right"></span></a>
                <ul>
		            <li><a href="admin">Usuarios</a></li>
		            <li><a href="admin/agencias">Agencias Tur&iacute;sticas</a></li>	
                    <li><a href="admin/paquetes">Paquetes Tur&iacute;sticas</a></li>
                    <li><a href="admin/destinos">Sitios Tur&iacute;sticos</a></li>	
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
