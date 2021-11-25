<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>INGRESO DE PRODUCTOS</title>
</head>
<body>

<a type="button" class="btn btn-success" href="/">Volver </a>

		<h2 style=" text-align: center;">Registro de productos</h2>
<div class="container">
	<div class="form-group">
		<form:form method="post" action="/producto/loginp" modelAttribute="producto">
		
		<div class="mb-3">
			<form:label  path="nombreProducto" class="form-label" >Nombre producto</form:label>
			<form:input  type="text" class="form-control" path="nombreProducto"/>
					
			
		</div>
			
		<div class="mb-3">
			<form:label path="descripcion" class="form-label" >Descripcion</form:label>
			<form:input type="text" class="form-control" path="descripcion"/>
			
		</div>
			
		<div class="mb-3">
			<form:label path="valor" class="form-label">Valor(Solo numeros)</form:label>
			<form:input type="text"  class="form-control" path="valor"/>
			
		</div>
			
		<div class="mb-3">
			<form:label path="stock" class="form-label">Stock(Solo numeros)</form:label>
			<form:input type="text" class="form-control" path="stock"/>
			
		</div>
		
		<div class="col text-center">
			<input type="reset" value="Limpiar" class="btn btn-secondary">
			<input type="submit" class="btn btn-primary" value="Enviar">
		</div>
	</form:form> 
	
		</div>
	</div>
	
	
</body>
</html>