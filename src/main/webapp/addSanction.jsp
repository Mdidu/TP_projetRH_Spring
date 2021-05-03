<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajout sanction</title>
<link href="../webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container-fluid">
	<h2 class="text-center">Formulaire ajout sanction pour ${employee.name} ${employee.lastName}</h2>
	<form:form action="save" modelAttribute="sanction">
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="description">Description</form:label>
			<form:input class="form-control col-sm-9" path="description" />
		</div>
		
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="sanctionType">Type de sanction</form:label>
			<form:input class="form-control col-sm-9" path="sanctionType" />
		</div>
		
		<form:hidden path="employee" value="${employee.idEmployee}"/>
		
		<div class="row form-group ml-4">
			<input class="form-control btn btn-primary col-sm-2" type="submit" value="Valider" />
		</div>
	</form:form>
</body>
</html>