<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Usuarios</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp" />
	<div class="container">
		<c:if test="${not empty mensagem}">
			<div class="alert alert-success alert-dismissible fade in">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Sucesso!</strong> ${mensagem}
			</div>
		</c:if>
		<c:if test="${not empty usuarios }">
			<h2>Listagem de Usuarios: ${usuarios.size()}</h2>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Id</th>
						<th>Nome</th>
						<th>Email</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="usuario" items="${usuarios}" varStatus="id">
						<tr>
							<td>${usuario.id}</td>
							<td>${usuario.getNome()}</td>
							<td>${usuario.getEmail()}</td>
							<td><a href="/usuario/${usuario.id}/excluir">Excluir</a></td>
							<td><a href="/usuario/${usuario.id}/consultar">Detalhar</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		<c:if test="${empty usuarios}">
			<h2>Não existem Usuarios cadastrados !!!</h2>
		</c:if>
	</div>
</body>
</html>
