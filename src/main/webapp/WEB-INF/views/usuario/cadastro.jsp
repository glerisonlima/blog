<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Usuario</title>
<link type="text/css" rel="stylesheet" href=" <c:url value="/css/style.css"/> ">
</head>
<body>
	<c:import url="../menu.jsp"/>
	<br>
	<c:url var="save" value="/usuario/save"/>
	
	<form:form modelAttribute="usuario" action="${save}" method="post" enctype="multipart/form-data"> 
		<form:hidden path="id"/>
		<fieldset>
			<legend>Cadastro de Usuarios</legend>
			<div>
				<form:label path="nome" >Nome do usuario</form:label><br>
				<form:input path="nome" type="text" required="true"/>
			</div>
			<br>
			<div>
				<form:label path="email" >E-Mail</form:label><br>
				<form:input path="email" type="email" required="true"/>
			</div>
			<br>
			<div>
				<form:label path="senha" >Senha</form:label><br>
				<form:password path="senha" required="true"/>
			</div>
			<br>
			<div>
				<label for="file" >Avatar</label><br>
				<input type="file" name="file"/>
			</div>
			<br>
			<div>
				<form:label path="perfil" >Perfil</form:label><br>
				<form:select path="perfil" required= "true">
					<form:option value="ADMIN" label="ADMIN" />
					<form:option value="AUTOR" label="AUTOR" />
					<form:option value="LEITOR" label="LEITOR" />
				</form:select>
			</div>
			<br>
			<div>
				<input type="submit" value="Salvar">
				<input type="reset" value="Limpar">
			</div>	
		</fieldset>
		
	</form:form>
</body>
</html>