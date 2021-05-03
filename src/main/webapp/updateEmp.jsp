<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modifier sanction</title>
<link href="../webjars/bootstrap/4.6.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="container-fluid">
	<c:import url="http://localhost:8082/projetRH/navbar.html" />

	<h2 class="text-center">Formulaire modification employé ${employee.name} ${employee.lastName}</h2>
	<form:form action="update" modelAttribute="employee">
		<form:hidden path="idEmployee" />
		
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="name">Nom</form:label>
			<form:input class="form-control col-sm-7" path="name" />
		</div>

		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="lastName">Prénom</form:label>
			<form:input class="form-control col-sm-7" path="lastName" />
		</div>

		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="adress">Adresse</form:label>
			<form:input class="form-control col-sm-7" path="adress"></form:input>
		</div>

		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="average">Salaire</form:label>
			<form:input class="form-control col-sm-7" path="average" />
		</div>

		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="telNumber">Numéro téléphone</form:label>
			<form:input class="form-control col-sm-7" path="telNumber" />
		</div>
		
		<div class="row form-group ml-4">
			<input class="form-control btn btn-primary col-sm-2" type="submit" value="Valider" />
		</div>
	</form:form>
</body>
</html>