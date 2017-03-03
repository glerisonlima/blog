<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar Usuario</title>
<link type="text/css" rel="stylesheet" href=" <c:url value="/css/style.css"/> ">
</head>
<body>
	<c:import url="../menu.jsp"/>
	<br>
	<fieldset>
		<legend>Editar dados do Usúario</legend>	
		<c:url var="save" value="/usuario/update/senha"/>	
		<form:form modelAttribute="usuario" action="${save}" method="post"> 
			<fieldset>
				<legend>Editar Senha</legend>
				<form:hidden path="id"/>
				<div class="campo">
					<form:label path="senha" >senha</form:label><br>
					<form:password path="senha" />
				</div>			
				<div>
					<input type="submit" value="Salvar">
					<input type="reset" value="Limpar">
				</div>	
			</fieldset>		
		</form:form>
	
		<c:url var="save" value="/usuario/update"/>	
		<form:form modelAttribute="usuario" action="${save}" method="post"> 
			<fieldset>
				<legend>Editar Nome e E-mail</legend>
				<form:hidden path="id"/>
				<div class="campo">
					<form:label path="nome" >Nome do usuario</form:label><br>
					<form:input path="nome" type="text" required="true"/>
				</div>			
				<div class="campo">
					<form:label path="email" >E-Mail</form:label><br>
					<form:input path="email" type="email" required="true"/>
				</div>			
				<div>
					<input type="submit" value="Salvar">
					<input type="reset" value="Limpar">
				</div>	
			</fieldset>		
		</form:form>
	</fieldset>
</body>
</html>