<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Minhas Ações</title>
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

		<h3>
			<a href="/acao"> Incluir uma nova Ação</a>
		</h3>

		<c:if test="${not empty acoes }">
			<h2>Listagem de Ações: ${acoes.size()}</h2>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Id</th>
						<th>Nome</th>
						<th>Sigla</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="acao" items="${acoes}" varStatus="id">
						<tr>
							<td>${acao.id}</td>
							<td>${acao.getNome()}</td>
							<td>${acao.getSigla()}</td>
							<td><a href="/acao/${acao.id}/excluir">Excluir</a></td>
							<td><a href="/acao/consultar">Detalhar</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>


		<c:if test="${empty acoes}">
			<h2>Não existem Ações cadastradas !!!</h2>
		</c:if>

	</div>

</body>
</html>
