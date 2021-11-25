<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>INGRESO DE VENTAS</title>
</head>
<body>
<a type="button" class="btn btn-success" href="/">Volver </a>
		<h2 style=" text-align: center;">Registro de ventas</h2>
		
<div class="container">
	<div class="form-group">
		<form:form method="post" action="/venta/loginv" modelAttribute="venta">
		
		<div class="mb-3">
			<form:label  path="nombreVenta" class="form-label" >Nombre Venta</form:label>
			<form:input  type="text" class="form-control" path="nombreVenta"/>
					
			
		</div>
			
		<div class="mb-3">
			<form:label path="montoVenta" class="form-label" >Monto Venta(Solo numeros)</form:label>
			<form:input type="text" class="form-control" path="montoVenta"/>
			
		</div>
			
		<div class="mb-3">
			<form:label path="codigoVenta" class="form-label">Codigo Venta</form:label>
			<form:input type="text"  class="form-control" path="codigoVenta"/>
			
		</div>
			
		<div class="mb-3">
			<form:label path="tipoVenta" class="form-label">Tipo Venta(tarjeta o efectivo)</form:label>
			<form:input type="text" class="form-control" path="tipoVenta"/>
			
		</div>
		
		<div class="col text-center">
			<input type="reset" value="Limpiar" class="btn btn-warning">
			<input type="submit" class="btn btn-success" value="Enviar">
		</div>
	</form:form> 
	
		</div>
	</div>
	
	<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col">Nombre Venta</th>
				      <th scope="col">Monto</th>
				      <th scope="col">Codigo</th>
				      <th scope="col">Tipo Venta</th>
				      <th scope="col">Acciones</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach items="${listaVentas}" var="venta">
			    <tr>
			      <th scope="row">${venta.getId()}</th>
			      <td>${venta.getNombreVenta()}</td>
			      <td>${venta.getMontoVenta()}</td>
			      <td>${venta.getCodigoVenta()}</td>
			      <td>${venta.getTipoVenta()}</td>
			      
				  			<td> <form action="/venta/eliminar">
				  			<input type="hidden" name="id" value="${venta.getId() }">
				  			<input type="submit" value="Eliminar" class="btn btn-danger">
				  			</form>		</td>
				  			<td> <form action="/venta/editar">
				  			<input type="hidden" name="id" value="${venta.getId() }">
				  			<input type="submit" value="Editar" class="btn btn-warning">
				  			</form>		
				  			
				  		</tr>			  		
				  		</c:forEach>  
				  </tbody>			
				</table>
</body>
</html>