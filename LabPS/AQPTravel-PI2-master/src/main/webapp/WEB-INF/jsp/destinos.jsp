<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>ViajaArequipa-Página de Inicio</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tourism web template" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->
<!-- css files -->

<link href="<c:url value="css/bootstrap.css"/> " rel="stylesheet" 	media="all">

<link href="<c:url value="css/styleUser.css"/> " rel="stylesheet" 	media="all">

<link href="<c:url value="css/font-awesome.css"/> " rel="stylesheet" 	media="all">



<!-- //css files -->
<!-- online-fonts -->
<link href="https://fonts.googleapis.com/css?family=Barlow+Semi+Condensed|IM+Fell+English|Source+Sans+Pro|Tenor+Sans" rel="stylesheet">
<!-- //online-fonts -->

<!-- js-scripts -->

<script src="<c:url value="js/jquery-2.1.4.min.js" />"></script> 

<script src="<c:url value="js/bootstrap.js" />"></script> 

<script src="<c:url value="js/easyResponsiveTabs.js" />"></script> 

			
	
	<script type="text/javascript">
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true   // 100% fit in a container
			});
		});
	</script>
	<!-- //Easy Responsivetabs -->
    
    <!--filtrar-->

<script src="<c:url value="js/jquery.filterizr.js" />"></script> 

<script src="<c:url value="js/controls.js" />"></script> 

    	
		<script type="text/javascript">
			$(function() {
				$('.filtr-container').filterizr();
			});
		</script>
        
	<!-- strat-date-piker -->

	<!-- //End-date-piker -->
	
<!-- //js-scripts -->




</head>
<body> 

	<div class="main-agile banner-2">
	<!-- header -->
	<div class="header-w3layouts"> 
		<!-- Navigation -->
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Turismo</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div> 
			<div class="logo-agile-1"> 
				<h1><a class="logo" href="login"><i class="fa fa-plane" aria-hidden="true"></i>&nbsp;&nbsp;ViajaArequipa</a></h1>
			</div> 
            
            <div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav navbar-right">
				<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
				<li ><a href="login">Inicio</a></li>
				<li class="active"><a class="" href="destinos.jsp">Destinos</a></li>
                <li><a class="" href="festividades.html">Festividades</a></li>
				<li><a class="" href="ofertas.jsp">Ofertas</a></li>
               
			</ul>
            
            <!--UN IF PARA UN USUARIO LOGUEADO Y PARA UNO QUE NO-->
			<div class="w3ls-social-icons-2">
            	    
                          
				<a class="menu" href="preguntas.html"><i class="fa fa-question-circle fa-3x" aria-hidden="true"></i></a>
                
                <!--solo aparece si esta logueado-->
				<a class="menu" href="carrito.jsp"><i class="fa fa-shopping-cart fa-3x" aria-hidden="true"></i></a>
                
                <div class="dropdown">

					<a class="menu" href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user fa-3x" aria-hidden="true"></i>Usuario1&nbsp;&nbsp;</a>
                	<!--Dropdown-->
                    <!--%out.print(nombreUser + " " + apellidoUser);%>
                     <!%out.print(emailUser);%> -->
                        <ul class="dropdown-menu" >
                        <li>
                            <div class="navbar-login">
                                <div class="row">
                                    <div class="col-md-4">
                                        <p class="text-center" style="margin-left:20px; margin-top:15px;">
                                             <i class="fa fa-user fa-5x" style="color:#666; "></i>
                                        </p>
                                    </div>
                                    <div class="col-md-7" style="padding-left:2px; padding-right:2px">
                                    	
                                        <p class="text-left"><strong>Nombre1 Apellido</strong></p>
                                        <p class="text-left">email@gmail.com</p>
                                     
                                        <p class="text-left">
                                   
                                            <a href="ModificarUsuario.jsp" class="btn btn-primary btn-block btn-sm" style="background-color:#336; padding:5px 5px; width:100%">Actualizar Datos</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="navbar-login navbar-login-session">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p>
                                            <a href="/cerrarSesion" class="btn btn-danger btn-block" style="width:60%; margin-left:75px;">Cerrar Sesion</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>

                    
                    
                    <!--fin DROPDOWN-->
                      
                </div>
			</div>
		</div>
		
		</nav>  
	</div>	
	<!-- //header -->
</div>
<!-- //banner-text -->
<!-- //banner --> 

<!-- welcome -->
<div class="portfolio">
	<div class="container">
		<h3 class="agile-title">DESTINOS TUR&Iacute;STICOS DE AREQUIPA</h3> 
		<div class="w3layouts_header">
			<p><span><i class="fa fa-plane sub-w3l" aria-hidden="true"></i></span></p>
		</div>
       
        <!--Aca se filtra por tipo de actividad -->
         <div class="descpagina">
			<p>Te invitamos a descubrir todos los destinos y actividades que el Perú tiene para ti</p>
		</div>
        
		<ul class="simplefilter">
			<li class="active" data-filter="all">Todos</li>
			<li data-filter="1">Arequipa</li>
			<li data-filter="2">Caravel&iacute;</li>
			<li data-filter="3">Caylloma</li>
			<li data-filter="4">Caman&aacute;</li>
            <li data-filter="5">Islay</li>
		</ul>
		<div class="filtr-container">
        
        <!--solo se nesceita un div.. y lo demas con un for-->
			<div class="  filtr-item gallery-t" data-category="1, 3" data-sort="Busy streets">
            	<!--Se envia id-->
				<a href="DestinoDetalle.jsp" class="b-link-stripe b-animate-go  thickbox">
					<figure class="w3ls-gallery">
                    	<!--jalar imagen del destino-->
						<img src="images/destino1.jpg" class="img-responsive" alt=" " />	
						<figcaption class="w3layouts-caption">
                        	<!--Jala Nombre-->
							<h3>Plaza de Armas de Arequipa</h3>
						</figcaption>
					</figure>
				</a>
			</div>
            
			<div class=" filtr-item" data-category="2" data-sort="Luminous night">
			   <a href="DestinoDetalle.jsp" class="b-link-stripe b-animate-go  thickbox">
				<figure class="w3ls-gallery">
					<img src="images/destino2.jpg" class="img-responsive" alt=" " />	
					<figcaption class="w3layouts-caption">
						<h3>Convento Santa Catalina</h3>
					</figcaption>
				</figure>
				</a>
			</div>
            
			<div class=" filtr-item" data-category="1, 3" data-sort="City wonders">
				<a href="DestinoDetalle.jsp" class="b-link-stripe b-animate-go  thickbox">
				<figure class="w3ls-gallery">
					<img src="images/destino3.jpg" class="img-responsive" alt=" " />	
					<figcaption class="w3layouts-caption">
						<h3>Catarata de Pillones</h3>
					</figcaption>
				</figure>
				</a>
			</div>
            
			<div class="  filtr-item" data-category="3" data-sort="In production">
			   <a href="images/g4.jpg" class="b-link-stripe b-animate-go  thickbox">
					<figure class="w3ls-gallery">
						<img src="images/g4.jpg" class="img-responsive" alt=" " />	
						<figcaption class="w3layouts-caption">
							<h3>Tourism</h3>
						</figcaption>
					</figure>
				</a>
			</div>
			<div class=" filtr-item" data-category="3, 2" data-sort="Industrial site">
				<a href="images/g5.jpg" class="b-link-stripe b-animate-go  thickbox">
					<figure class="w3ls-gallery">
						<img src="images/g5.jpg" class="img-responsive" alt=" " />	
						<figcaption class="w3layouts-caption">
							<h3>Tourism</h3>
						</figcaption>
					</figure>
				</a>
			</div>
			<div class=" filtr-item" data-category="2, 3" data-sort="Peaceful lake">
				<a href="images/g6.jpg" class="b-link-stripe b-animate-go  thickbox">
					<figure class="w3ls-gallery">
						<img src="images/g6.jpg" class="img-responsive" alt=" " />	
						<figcaption class="w3layouts-caption">
							<h3>Tourism</h3>
						</figcaption>
					</figure>
				</a>
			</div>
			<div class="  filtr-item" data-category="1, 3" data-sort="City lights">
			   <a href="images/g7.jpg" class="b-link-stripe b-animate-go  thickbox">
					<figure class="w3ls-gallery">
						<img src="images/g7.jpg" class="img-responsive" alt=" " />	
						<figcaption class="w3layouts-caption">
							<h3>Tourism</h3>
						</figcaption>
					</figure>
				</a>
			</div>
			<div class=" filtr-item" data-category="2, 2" data-sort="Dreamhouse">
			   <a href="images/g8.jpg" class="b-link-stripe b-animate-go  thickbox">
					<figure class="w3ls-gallery">
						<img src="images/g8.jpg" class="img-responsive" alt=" " />	
						<figcaption class="w3layouts-caption">
							<h3>Tourism</h3>
						</figcaption>
					</figure>
				</a>
			</div>
			<div class=" filtr-item" data-category="4" data-sort="Dreamhouse">
				<a href="images/g9.jpg" class="b-link-stripe b-animate-go  thickbox">
					<figure class="w3ls-gallery">
						<img src="images/g9.jpg" class="img-responsive" alt=" " />	
						<figcaption class="w3layouts-caption">
								<h3>Tourism</h3>
						</figcaption>
					</figure>
				</a>
			</div>
		   <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //welcome -->

<!--mapa-->
<!--usen esto para marcar todos los destino https://developers.google.com/maps/documentation/embed/guide?hl=es-419#optional_parameters-->
<div class="w3l-map">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3074.7905052320443!2d-77.84987248482734!3d39.586871613613056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c9f6a80ccf0661%3A0x7210426c67abc40!2sVirginia+Welcome+Center%2FSafety+Rest+Area!5e0!3m2!1sen!2sin!4v1485760915662" ></iframe>
</div>

<!-- footer -->
<footer>
	<div class="agileinfo-footer">
		<div class="container">
			<div class="agileits-footer-top">
				<div class="col-sm-4 w3ls-address-grid">
					<i class="glyphicon glyphicon-map-marker"></i>
					<div class="w3-address1">
						<p>Av.Independencia S/N - Arequipa</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-sm-4 w3ls-address-grid">
					<i class="glyphicon glyphicon-phone"></i>
					<div class="w3-address1">
						<p>953719528</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-sm-4 w3ls-address-grid">
					<i class="fa fa-book" aria-hidden="true" style="color:#FFF"></i>
					<div class="w3-address1">
						<p><a href="libro.jsp">Quejas y Sugerencias</a></p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			
			<!-- Counter -->
			<div class="services-bottom">
				<div class="counter-agile">
					<div class="counter-subw3l">
						<p><a href="login" style="font-family: 'Tenor Sans', sans-serif; font-size:25px"><i class="fa fa-plane" aria-hidden="true"></i>ViajaAqp</a></p>
					</div>
					<div class="ftr-menu">
						 <ul>
							<li class="active"><a href="login">Inicio</a></li>
                            <li><a class="" href="destinos.jsp">Destinos</a></li>
                            <li><a class="" href="festividades.html">Festividades</a></li>
                            <li><a class="" href="ofertas.jsp">Ofertas</a></li>
						 </ul>
					</div>
					<div class="counter-subw3l w3l-right-footer">
						<ul class="w3layouts-agileits-social">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-youtube"></i></a></li>
				
						</ul>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<!-- //Counter -->
		</div>
		<div class="agileits-footer-bottom">
			<p class="footer-class">&copy; 2017 ViajaArequipa Todos los Derechos Reservados | Dise&ntilde;ado por:  <a href="www.tecsoft.com" target="_blank">TecSoft</a> </p>
		</div>
	</div>
</footer>
<!-- //footer -->
</body>
</html>
