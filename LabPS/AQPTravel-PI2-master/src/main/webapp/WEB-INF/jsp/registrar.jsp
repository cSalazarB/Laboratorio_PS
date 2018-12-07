<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="es">
<head>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Registrar</title>
<link href="<c:url value="/resources/css/bootstrap.min.css"/> "
	rel="stylesheet">
<link href="<c:url value="/resources/css/miEstilo.css"/> "
	rel="stylesheet">
<link href="<c:url value="/resources/css/languages.min.css"/> "
	rel="stylesheet">
<link href="<c:url value="/resources/css/style2.css"/> " rel="stylesheet">
</head>
<body class="container">
	<div class="test"></div>


	<div class="row justify-content-center ">
		<div id="div_registro_usuario" class="col col-md-6 ">
			<form id="form_regUsuario">
				
				
				<div class="form-group">
					<label for="nombre"><span class="Icon-user3"></span> Nombre</label>
					<input type="text" class="form-control" id="nombre" name="nombre"
						placeholder="Ingrese Nombre">
				</div>

				<div class="form-group">
					<label for="apellidoAdmin"><span class="icon-user"></span>
						Apellidos</label> <input type="text" class="form-control"
						name="apellidoAdmin" id="apellidoAdmin"
						placeholder="Ingrese Apellidos ">
				</div>

				<div class="form-group">
					<label for="celularAdmin"><span class="Icon-phone"></span>
						Telefono</label>
					<div class="input-group mb-2 mb-sm-0">
						<input type="text" class="form-control" id="celularAdmin"
							name="celularAdmin" placeholder="Ingrese Telefono">
					</div>
				</div>

				<div class="form-group">
					<label for="correoAdmin"><span class="Icon-mail2"></span>
						Correo Electrónico</label>
					<div class="input-group mb-2 mb-sm-0">
						<input type="text" class="form-control" id="correoAdmin"
							name="correoAdmin" placeholder="Ingrese Email">
					</div>
				</div>

				<div class="form-group">
					<label for="direccionAdmin"><span class="Icon-lock"></span>
						Direccion</label>
					<div class="input-group mb-2 mb-sm-0">
						<input type="text" class="form-control" id="direccionAdmin"
							name="direccionAdmin" placeholder="direccion">
					</div>
				</div>


				<div class="form-group">
					<label for="contrasenaAdmin"><span class="Icon-lock"></span>
						Contraseña</label>
					<div class="input-group mb-2 mb-sm-0">
						<input type="password" class="form-control" id="contrasenaAdmin" 
							name="contrasenaAdmin" placeholder="Ingrese Contraseña">
					</div>
				</div>				

				<div id="div_sub_reg" class="form-group justify-content-center">
					<center>
						<button type="button" class="btn btn-success btn-lg btn_reg_cli"
							onclick="addAdmin()">
							<span class="Icon-floppy-disk"></span> Registrarse
						</button>
					</center>

				</div>

			</form>
		</div>

	</div>



	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/admin.js" />"></script>


</body>
</html>