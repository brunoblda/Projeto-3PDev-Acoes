<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastra!!!</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>


	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container">

		<c:if test="${not empty mensagem}">
			<div class="alert alert-danger">
				<strong>Problema!</strong> ${mensagem}
			</div>
		</c:if>

		<c:set var="titulo" value="Cadastramento de usuario" />
		<c:set var="rota" value="/usuario/cadastro" />
		<c:set var="metodo" value="post" />
		<c:set var="botao" value="Cadastrar" />

		<c:if test="${not empty usuario }">
			<c:set var="titulo" value="Detalhes" />
			<c:set var="rota" value="/index" />
			<c:set var="metodo" value="get" />
			<c:set var="botao" value="Index" />
		</c:if>

		<h2>${titulo}</h2>
		<form action="${rota}" method="${metodo}">

			<div class="form-group">
				<label>Nome:</label> <input type="text" class="form-control"
					value="${usuario.nome}" placeholder="Entre com o seu nome"
					name="nome">
			</div>

			<div class="form-group">
				<label>E-mail:</label> <input type="email" class="form-control"
					value="${usuario.email}" placeholder="Entre com o seu e-mail"
					name="email">
			</div>
			<c:if test="${empty usuario}">
				<div class="form-group">
					<label>Senha:</label> <input type="password" class="form-control"
						placeholder="Entre com a sua senha" name="senha">
				</div>
			</c:if>
			<c:if test="${empty usuario}">
				<div class="form-group">
					<label>Administrador:</label>
					<div class="radio">
						<label><input type="radio" name="administrador"
							value="True">Sim</label>
					</div>
					<div class="radio">
						<label><input type="radio" name="administrador"
							value="False">Não</label>
					</div>
				</div>
			</c:if>

			<c:if test="${not empty usuario}">
				<c:if test="${usuario.administrador}">
					<div class="form-group">
						<label>Administrador:</label>
						<div class="radio">
							<label><input type="radio" checked="checked"
								name="administrador" value="True">Sim</label>
						</div>
						<div class="radio">
							<label><input type="radio" name="administrador"
								value="False">Não</label>
						</div>
					</div>
				</c:if>
				<c:if test="${usuario.administrador == false}">
					<div class="form-group">
						<label>Administrador:</label>
						<div class="radio">
							<label><input type="radio" name="administrador"
								value="True">Sim</label>
						</div>
						<div class="radio">
							<label><input type="radio" name="administrador"
								checked="checked" value="False">Não</label>
						</div>
					</div>
				</c:if>
			</c:if>

			<button type="submit" class="btn btn-default">${botao}</button>
		</form>
	</div>

</body>
</html>