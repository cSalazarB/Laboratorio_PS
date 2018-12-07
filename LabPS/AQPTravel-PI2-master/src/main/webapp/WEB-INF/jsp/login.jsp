
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="es">
<head>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Login</title>
<link href="<c:url value="/resources/css/bootstrap.min.css"/> "
	rel="stylesheet">
<link href="<c:url value="/resources/css/login.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script type="text/javascript">
	$(function() {

		$('#login-form-link').click(function(e) {
			$("#login-form").delay(100).fadeIn(100);
			$("#register-form").fadeOut(100);
			$('#register-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});
		$('#register-form-link').click(function(e) {
			$("#register-form").delay(100).fadeIn(100);
			$("#login-form").fadeOut(100);
			$('#login-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});

	});
</script>

</head>
<body>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Iniciar
									Sesi&oacute;n</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Registrarse</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="sessionuser" 
									method="POST" role="form" style="display: block;">
									<div class="form-group">
										<input name="username" id="correo" tabindex="1"
											class="form-control" placeholder="Correo" value=""
											type="text" required>
									</div>
									<div class="form-group">
										<input name="password" id="contrasena" 
											tabindex="2" class="form-control" placeholder="Password"
											type="password"required>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input name="login-submit" id="login-submit" tabindex="4"
													class="form-control btn btn-login" value="Ingresar"
													type="submit">
											</div>
										</div>
									</div>

								</form>
								<form id="register-form" role="form" style="display: none;" action="customer/save" method="POST">
									<div class="form-group">
										<input name="nombre" id="nombre" tabindex="1"
											class="form-control" placeholder="Nombre" value=""
											type="text" required>
									</div>
									<div class="form-group">
										<input name="apellido" id="apellido" tabindex="1"
											class="form-control" placeholder="Apellido" value=""
											type="text" required>
									</div>
									<div class="form-group">
										<input name="email" id="email" tabindex="1"
											class="form-control" placeholder="Correo" value=""
											type="email" required>
									</div>
									<div class="form-group">
										<input name="password" id="password" tabindex="2"
											class="form-control" placeholder="Password" type="password" required>
									</div>
									<div class="form-group">
										<input name="telefono" id="telefono" tabindex="2"
											class="form-control" placeholder="Telefono" type="text" onkeypress="return numeros(event)" required >
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input name="register-submit" id="register-submit"
													tabindex="4" class="form-control btn btn-register"
													value="Registrarse" type="button" onClick="addCliente()">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


<script src="<c:url value="/resources/js/cliente.js" />"></script>
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
</body>
</html>