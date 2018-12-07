<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<form id="form_login" action="plogin" method="POST">
				
				
				<div class="form-group">
					<label for="correo"><span class="Icon-user3"></span> Correo</label>
					<input type="text" class="form-control" id="correo" name="correo"
						placeholder="Ingrese Correo">
				</div>
				<div class="form-group">
					<label for="contrasena"><span class="Icon-lock"></span>
						Contraseña</label>
					<div class="input-group mb-2 mb-sm-0">
						<input type="password" class="form-control" id="contrasena" 
							name="contrasena" placeholder="Ingrese Contraseña">
					</div>
				</div>				

				<div id="div_sub_reg" class="form-group justify-content-center">
					<center>
						<button type="submit" class="btn btn-success btn-lg btn_reg_cli">
							<span class="Icon-floppy-disk"></span> Ingresar
						</button>
					</center>

				</div>

			</form>
		</div>

	</div>



	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>


</body>
</html>