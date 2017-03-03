<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Autor</title>
<link type="text/css" rel="stylesheet" href=" <c:url value="/css/style.css"/> ">
</head>
<body>
	<c:import url="../menu.jsp"/>
	<br>
	<fieldset>
		<legend>Perfil</legend>
		<table class="table"> 
			<thead>
				<tr>
					<th>Nome</th>
					<th>E-mail</th>
					<th>Data de Cadastro</th>
					<th>Biografia</th>
					<th>Ação</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${autor.nome}</td>
					<td>${autor.usuario.email}</td>
					<td>${autor.usuario.dataCadastro}</td>
					<td>${autor.biografia}</td>
					<td>
						<c:url var="update" value=""/>
						<a href="#" title="Editar">&#9445</a>	
						<a href="#" title="Excluir">&#9447</a>	
					</td>
				</tr>
			</tbody>
		</table>
	</fieldset>
</body>
</html>