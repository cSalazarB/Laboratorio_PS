<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Administrador-Destinos</title>
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
	

	$.post("../destinos/list_destinos",function(data){
		$('#list_destinos').html(data);
		$('#tableDestinos').DataTable({
			"language": {
				"decimal": "",
		        "emptyTable": "No hay informaci�n",
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
								<h1>AqpTravel</h1> <!--<img id="logo" src="" alt="Logo"/>-->
							</a>
						</div>

						<div class="clearfix"></div>
					</div>
					<div class="header-right">
						<div class="profile_details_left">
							<!--notifications of menu start -->
							<ul class="nofitications-dropdown">
								<li class="dropdown head-dpdn"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown"
									aria-expanded="false"><i class="fa fa-envelope fa-2x"></i><span
										class="badge">3</span></a>
									<ul class="dropdown-menu">
										<li>
											<div class="notification_header">
												<h3>Tienes (3) mensajes nuevos</h3>
											</div>
										</li>
										<li><a href="#">
												<div class="user_img">
													<img src="images/p4.png" alt="">
												</div>
												<div class="notification_desc">
													<p>Jalar de BD mensaje</p>
													<p>
														<span>Hace 1 hora</span>
													</p>
												</div>
												<div class="clearfix"></div>
										</a></li>
										<li class="odd"><a href="#">
												<div class="user_img">
													<img src="images/p2.png" alt="">
												</div>
												<div class="notification_desc">
													<p>Jalar de BD mensaje</p>
													<p>
														<span>Hace 1 hora</span>
													</p>
												</div>
												<div class="clearfix"></div>
										</a></li>
										<li><a href="#">
												<div class="user_img">
													<img src="images/p3.png" alt="">
												</div>
												<div class="notification_desc">
													<p>Jalar de BD mensaje</p>
													<p>
														<span>Hace 2 horas</span>
													</p>
												</div>
												<div class="clearfix"></div>
										</a></li>
										<li>
											<div class="notification_bottom">
												<a href="mensajes_admin.html">Ver Todos los mensajes</a>
											</div>
										</li>
									</ul></li>
								<li class="dropdown head-dpdn"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown"
									aria-expanded="false"><i class="fa fa-bell fa-2x"></i><span
										class="badge blue">3</span></a>
									<ul class="dropdown-menu">
										<li>
											<div class="notification_header">
												<h3>TÃº tienes (JalarBD) Paquetes agregados</h3>
											</div>
										</li>
										<li><a href="#">
												<div class="user_img">
													<img src="images/p5.png" alt="">
												</div>
												<div class="notification_desc">
													<p>La agencia (JalarBD) agregÃ³ nuevo paquete</p>
													<p>
														<span>Hace una hora</span>
													</p>
												</div>
												<div class="clearfix"></div>
										</a></li>
										<li class="odd"><a href="#">
												<div class="user_img">
													<img src="images/p6.png" alt="">
												</div>
												<div class="notification_desc">
													<p>La agencia (JalarBD) agregÃ³ nuevo paquete</p>
													<p>
														<span>Hace 1 hora</span>
													</p>
												</div>
												<div class="clearfix"></div>
										</a></li>
										<li><a href="#">
												<div class="user_img">
													<img src="images/p7.png" alt="">
												</div>
												<div class="notification_desc">
													<p>La agencia (JalarBD) agregÃ³ nuevo paquete</p>
													<p>
														<span>Hace 1 hora</span>
													</p>
												</div>
												<div class="clearfix"></div>
										</a></li>
										<li>
											<div class="notification_bottom">
												<a href="#">Ver todas las Notificaciones</a>
											</div>
										</li>
									</ul></li>

							</ul>
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
												<p>Admin1</p>
												<span>Administrador</span>
											</div>
											<i class="fa fa-angle-down lnr"></i> <i
												class="fa fa-angle-up lnr"></i>
											<div class="clearfix"></div>
										</div>
								</a>
									<ul class="dropdown-menu drp-mnu">
										<li><a href="#"><i class="fa fa-sign-out"></i>Cerrar
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
									Gesti&oacute;n de Sitios tur&iacute;sticos

									<p>&nbsp</p>
								</div>

								<div class="mail-toolbar clearfix" style="width: 150%">
									<div class="float-left">
										<div class="btn btn_1 btn-default mrg5R">
											<i class="fa fa-refresh"> </i>
										</div>
										<a class="btn btn-primary" data-toggle='modal'
											data-target='#myModalDestino' aria-label='Delete'> <i
											class='fa fa-pencil' aria-hidden='true'></i> &nbsp;Agregar
											Nuevo
										</a>


										<div class="clearfix"></div>
									</div>
									<div class="float-right">

										<!--ACTUALIZAR ESTO CON BD-->

										<span class="text-muted m-r-sm">Mostrar 10 of 200
											&nbsp;&nbsp;&nbsp; </span>

										<div class="btn-group">
											<a class="btn btn-default"><i class="fa fa-angle-left"></i></a>
											<a class="btn btn-default"><i class="fa fa-angle-right"></i></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>


								<p>&nbsp</p>
								<p>&nbsp</p>

								<div class="table-responsive">
									<table id="tableDestinos" class="table table-hover display"
										cellspacing="0" width="100%">
										<thead>
											<tr>
												<th>Nro</th>
												<th>Nombre de Sitio Tur&iacute;stico</th>
												<th>Estado</th>
												<th>Opciones</th>
											</tr>
										</thead>
										<tbody id="list_destinos">

										</tbody>
									</table>



								</div>
							</div>
						</div>
					</div>
				</div>



				<!--copy rights start here-->
				<div class="copyrights">
					<p>
						Â© 2017 AQPTravel Todos los derechos Reservados |
						Dise&ntilde;ado por <a href="http://tecsofts.com/" target="_blank">TecSoft</a>
					</p>
				</div>
				<!--COPY rights end here-->
			</div>
		</div>

		<!--slider menu-->
		<div class="sidebar-menu">
			<div class="logo">
				<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
				</a> <a href="#"> <span id="logo"></span> <!--<img id="logo" src="" alt="Logo"/>-->
				</a>
			</div>
			<div class="menu">
				<ul id="menu">
					<li id="menu-home"><a href="../admin"><i
							class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
					<li><a href="../admin/mensajes"><i class="fa fa-envelope"></i><span>Mensajes</span></a>

					</li>
					<li id="menu-comunicacao"><a href="#"><i
							class="fa fa-cogs"></i><span>Configuraciones</span><span
							class="fa fa-angle-right" style="float: right"></span></a>
						<ul>
							<li><a href="../admin/users">Usuarios</a></li>
							<li><a href="../admin/agencias">Agencias
									Tur&iacute;sticas</a></li>
							<li><a href="../admin/paquetes">Paquetes
									Tur&iacute;sticas</a></li>

							<!-- AGREGUEN ESTOOOOOOOOOOOOOOO -->
							<li><a href="../admin/destinos">Sitios Tur&iacute;sticos</a></li>

							<li><a href="#">Restaurar Informaci&oacute;n</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-book nav_icon"></i><span>Reportes</span></a></li>


				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<!--  modal SAVE-->
	<div id="myModalDestino" class="modal fade">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">

				<form id="form_regDestino">
					<div class="panel panel-default"
						style="font-family: 'Ruda', sans-serif;">
						<div class="panel-heading"
							style="border-bottom: solid #CCC 1px; padding-top: 25px; padding-left: 25px">
							<h3 class="panel-title">
								<strong style="font-size: 30px">Agregar Nuevo Destino </strong>
								Formulario
							</h3>
						</div>
						<div class="panel-body">
							<div class="col-md-12">
								<fieldset>
									<legend> Datos del Sitio Tusitico</legend>

									<div class="form-group">
										<label class="col-md-4 control-label">Nombre de
											Destino:</label>
										<div class="col-md-8">
											<div class="input-group">
												<span class="input-group-addon"><span
													class="fa fa-pencil"></span></span> <input type="text"
													class="form-control" name="nombreDestino"
													id="nombreDestino" maxlength="70" />

											</div>

										</div>
									</div>
									<br>


									<div class="form-group">
										<label class="col-md-4 control-label">EstadoDestino: </label>
										<div class="col-md-8">
											<div class="input-group">
												<label class="radio-inline"><input type="radio"
													name="estadoDestino" value="0">Deshabilidato</label> <label
													class="radio-inline"><input type="radio"
													name="estadoDestino" value="1" checked>Habilitado</label>
											</div>

										</div>
									</div>


								</fieldset>

							</div>

						</div>
						<div class="panel-footer">
							<button class="btn btn-default" data-dismiss="modal">Salir</button>

							<button type="button" class="btn btn-primary pull-right"
								onclick="addDestino()">Registrar</button>

						</div>
					</div>

				</form>

			</div>
		</div>
	</div>


	<!--  modal Update-->
	<div id="myModalDestinoEditar" class="modal fade">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">

				<form id="form_regDestinoE">
					<div class="panel panel-default"
						style="font-family: 'Ruda', sans-serif;">
						<div class="panel-heading"
							style="border-bottom: solid #CCC 1px; padding-top: 25px; padding-left: 25px">
							<h3 class="panel-title">
								<strong style="font-size: 30px">Modificar Destino </strong>
								Formulario
							</h3>
						</div>
						<div class="panel-body">
							<div class="col-md-12">
								<fieldset>
									<legend> Datos del Sitio Tusitico</legend>

									<div class="form-group">
										<label class="col-md-4 control-label">Nombre de
											Destino:</label>
										<div class="col-md-8">
											<div class="input-group">
												<span class="input-group-addon"><span
													class="fa fa-pencil"></span></span> <input type="text"
													class="form-control" name="nombreDestinoE"
													id="nombreDestinoE" maxlength="70" /> <input type="hidden"
													class="form-control" name="idDestinoE" id="idDestinoE" />

											</div>

										</div>
									</div>
									<br>

								</fieldset>

							</div>

						</div>
						<div class="panel-footer">
							<button class="btn btn-default" data-dismiss="modal">Cancelar</button>

							<button type="button" class="btn btn-primary pull-right"
								onclick="editDestino()">Modificar</button>

						</div>
					</div>

				</form>

			</div>
		</div>
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
            })
            </script>
</body>

<script src="<c:url value="/resources/js/destino.js" />"></script>
<script
	src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js"/>"></script>
<script type="text/javascript">
	
	$(function() {
	    $('input[type=text]').on('keypress', function(e) {
	        if (e.which == 32){
	        	if($(this).val().length==0)return false;
	        }	            
	    });
	});
	</script>
</html>


