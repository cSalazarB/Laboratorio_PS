<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>No autorizado</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value="/resources/css/noauto.css"/>" rel="stylesheet" type="text/css" media="all"/>
<link href="https://fonts.googleapis.com/css?family=Fenix" rel="stylesheet">
</head>
<body>
  <div class="wrap">
	 <div class="main">
		<h3>PeruViajes</h3>
		<h1>Usted no puede acceder a esta página</h1>
		<p>No cuenta con los permisos adecuados<span class="error"> 403</span>.<br>
			<span>Por favor intenta loguearte</span></p>
			<div class="search">
				<form action="login" method="GET">
					<input type="submit" value="Regresar">		
				</form>
			</div>
   </div>
  </div>
</body>
</html>