<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Usuarios</title>
<link type="text/css" rel="stylesheet" href="<c:url value="/css/style.css" />">
</head>
<body>
	<c:import url="../menu.jsp"/>
	<br>
	<fieldset>
		<legend>Perfil</legend>
		<table class="table"> 
			<thead>
				<tr>
					<th>Avatar</th>
					<th>Nome</th>
					<th>E-mail</th>
					<th>Data de Cadastro</th>
					<th>Perfil</th>
					<th>Ação</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="usuario" items="${usuarios}" varStatus="i">
				<tr bgcolor="${i.count % 2 != 0 ? '#f1f1f1' : 'white'}">
					<td><a href='<c:url value="/avatar/update/${usuario.avatar.id}" />' title="Editar Avatar">
						<img alt="" src="<c:url value="/avatar/load/${usuario.avatar.id}"/>" style="width: 25px; height: 25px;"/>
						</a>
					</td>	
					<td>${usuario.nome}</td>
					<td>${usuario.email}</td>
					<td>${usuario.dataCadastro}</td>
					<td>${usuario.perfil}</td>
					<td>
						<c:url var="update" value="/usuario/update/${usuario.id}"/>
						<a href="${update}" title="Editar">&#9445</a>	
						<a href="#" title="Excluir">&#9447</a>	
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</fieldset>
</body>
</html>