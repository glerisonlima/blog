<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar Avatar</title>
<link type="text/css" rel="stylesheet" href=" <c:url value="/css/style.css"/> ">
</head>
<body>
	<c:import url="../menu.jsp"/>
	<br>
	
		<c:url var="save" value="/avatar/update"/>	
		<form:form modelAttribute="avatar" action="${save}" method="post" enctype="multipart/form-data"> 
			<fieldset>
				<legend>Editar Avatar</legend>
				<form:hidden path="id"/>
				<div class="campo">
					<label>Avatar</label><br>
					<input type="file" name="file" required="true" />
				</div>			
				<div>
					<input type="submit" value="Salvar">
					<input type="reset" value="Limpar">
				</div>	
			</fieldset>		
		</form:form>
	
</body>
</html>