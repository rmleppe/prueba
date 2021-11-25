<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Bienvenido</title>
</head>
<body>

		
	<div class="col text-center">
			<h2>Elija una opción</h2>
			
			<a type="button" class="btn btn-success" href="/usuario">USUARIOS </a>
			<a type="button" class="btn btn-success" href="/venta">VENTAS </a>
			<a type="button" class="btn btn-success" href="/producto">PRODUCTOS </a>
		
		</div>
</body>
</html>