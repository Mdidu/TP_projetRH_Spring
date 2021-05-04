<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajout sanction</title>
<script defer="defer" src="../webjars/jquery/1.9.1/jquery.min.js"></script>
<script defer="defer" src="../webjars/popper.js/1.16.0/umd/popper.min.js"></script>
<script defer="defer" src="../webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link href="../webjars/bootstrap/4.6.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="container-fluid">
	<c:import url="http://localhost:8082/projetRH/navbar.html" />

	<h2 class="text-center">Formulaire ajout sanction pour ${employee.name} ${employee.lastName}</h2>
	<form:form action="save" modelAttribute="sanction">
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="description">Description</form:label>
			<form:input class="form-control col-sm-7" path="description" />
		</div>
		
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="sanctionType">Type de sanction</form:label>
			<form:input class="form-control col-sm-7" path="sanctionType" />
		</div>
		
		<form:hidden path="employee" value="${employee.idEmployee}"/>
		
		<div class="row form-group ml-4">
			<input class="form-control btn btn-primary col-sm-2" type="submit" value="Valider" />
		</div>
	</form:form>
	
	<c:import url="http://localhost:8082/projetRH/footer.html" />
</body>
</html>