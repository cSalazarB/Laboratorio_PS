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
<link href="<c:url value="/resources/css/bootstrap.css"/> "
	rel="stylesheet" media="all">
<!-- Custom Theme files -->
<link href="<c:url value="/resources/css/style2.css"/> " rel="stylesheet"
	media="all">
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
	
	$.post("../paquete/list_paquetes",function(data){
		$('#list_paquete').html(data);
		$('#tablePaquete').DataTable({
			"language": {
				"decimal": "",
		        "emptyTable": "No hay información",
		        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
		        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
		        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
		        "infoPostFix": "",
		        "thousands": ",",
		        "lengthMenu": "Mostrar _MENU_ Entradas",
		        "loadingRecords": "Cargando...",
		        "processing": "Procesando...",
		        "search": "Buscar:",
		        "zeroRecords": "Sin resultados encontrados",
		        "paginate": {
		            "first": "Primero",
		            "last": "Ultimo",
		            "next": "Siguiente",
		            "previous": "Anterior"
		            
		        }
				
	        }
		});
	})
    
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
							<a href="index_admin.html">
								<h1>AQPTravel</h1> <!--<img id="logo" src="" alt="Logo"/>-->
							</a>
						</div>

						<div class="clearfix"></div>
					</div>
						<!--notification menu end -->
						<div class="profile_details">
							<ul>
								<li class="dropdown profile_details_drop"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown"
									aria-expanded="false">
										<div class="profile_img">
											<span class="prfil-img"><img src="images/p1.png"
												alt=""> </span>
											<div class="user-name">
												<p>${iduser} </p>
												<span><a href="../index">Cerrar
												Sesi&oacute;n</a></span>
											</div>
										</div>
								</a>
									<ul class="dropdown-menu drp-mnu">
										<li><a href="../index"><i class="fa fa-sign-out"></i>Cerrar
												Sesi&oacute;n</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
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
						<div class="col-md-12 chit-chat-layer1-left">
							<div class="work-progres">
								<div class="chit-chat-heading">
									Gesti&oacute;n de paquetes tur&iacute;sticos

									<p>&nbsp</p>
								</div>

								<div class="mail-toolbar clearfix" style="width: 150%">
									<div class="float-left">
										<a class="btn btn_1 btn-default mrg5R" href="admin/paquetes">
											<i class="fa fa-refresh"> </i>
										</a>
										<a class="btn btn-primary" href="../admin/agregar_paquetes">
											<i class="fa fa-plus fa-lg"></i> &nbsp;Agregar Nuevo
										</a>


										<div class="clearfix"></div>
									</div>
									
								</div>

								
								<p>&nbsp</p>
								<p>&nbsp</p>

								<div class="table-responsive">
									<table id="tablePaquete" class="table table-hover display"
										cellspacing="0" width="100%">

										<thead>
											<tr>
												<th>Nro.</th>
												<th>Nombre de Paquete Tur&iacute;stico</th>
												<th>Agencia Tur&iacute;stica</th>												
												<th>Destino</th>
												<th>Estado</th>
											</tr>

										</thead>
										<tfoot>
											<tr>
												<th>Nro.</th>
												<th>Nombre de Paquete Tur&iacute;stico</th>
												<th>Agencia Tur&iacute;stica</th>											
												<th>Destino</th>
												<th>Estado</th>

											</tr>
										</tfoot>
										<tbody id="list_paquete">

										</tbody>
									</table>



								</div>
							</div>
						</div>
					</div>
				</div>
				<!--inner block end here-->
				<!-- modal  -->



				<!--copy rights start here-->
				<div class="copyrights">
					<p>
						2017 AQPTravel Todos los derechos Reservados |
						Dise&ntilde;ado por <a href="http://tecsofts.com/" target="_blank">TecSoft</a>
					</p>
				</div>
				<!--COPY rights end here-->
			</div>
		</div>

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

	<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
	<script src="<c:url value="/resources/js/paquete.js" />"></script>
</body>
</html>


