<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>INGRESO DE USUARIOS</title>
</head>
<body>
<a type="button" class="btn btn-success" href="/">Volver </a>
		<h2 style=" text-align: center;">Registro de usuarios</h2>
		
<div class="container">
	<div class="form-group">
		<form:form method="post" action="/usuario/login" modelAttribute="usuario">
		
		<div class="mb-3">
			<form:label  path="nombre" class="form-label" >Nombre</form:label>
			<form:input  type="text" class="form-control" path="nombre"/>
					
			
		</div>
			
		<div class="mb-3">
			<form:label path="apellido" class="form-label" >Apellido</form:label>
			<form:input type="text" class="form-control" path="apellido"/>
			
		</div>
			
		<div class="mb-3">
			<form:label path="rut" class="form-label">RUT</form:label>
			<form:input type="text"  class="form-control" path="rut"/>
			
		</div>
			
		<div class="mb-3">
			<form:label path="telefono" class="form-label">Telefono(Solo numeros)</form:label>
			<form:input type="text" class="form-control" path="telefono"/>
			
		</div>
		
		<div class="col text-center">
			<input type="reset" value="Limpiar" class="btn btn-secondary">
			<input type="submit" class="btn btn-primary" value="Enviar">
		</div>
	</form:form> 
	
		</div>
	</div>
	
	<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col">Nombre</th>
				      <th scope="col">Apellido</th>
				      <th scope="col">Rut</th>
				      <th scope="col">Telefono</th>
				      <th scope="col">Acciones</th>
				    </tr>
				  </thead>
				  <tbody>
				  			<c:forEach items="${listaUsuarios}" var="usuario" >
			    <tr>
			      <th scope="row">${usuario.getId()}</th>
			      <td>${usuario.getNombre()}</td>
			      <td>${usuario.getApellido()}</td>
			      <td>${usuario.getRut()}</td>
			      <td>${usuario.getTelefono()}</td>
			      
				  			<td> <form action="/usuario/eliminar">
				  			<input type="hidden" name="id" value="${usuario.getId() }">
				  			<input type="submit" value="Eliminar" class="btn btn-danger">
				  			</form>		</td>
				  			<td> <form action="/usuario/editar">
				  			<input type="hidden" name="id" value="${usuario.getId() }">
				  			<input type="submit" value="Editar" class="btn btn-warning">
				  			</form>		
				  			
				  		</tr>			  		
				  		</c:forEach>  
				  </tbody>			
				</table>
	
	
	
</body>
</html>