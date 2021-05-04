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

	<h2 class="text-center">Formulaire modification absence pour
		${employee.name} ${employee.lastName}</h2>
		
	<form:form action="update" modelAttribute="absence">

		<form:hidden path="idAbsence" />

		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="justification">Justificatif</form:label>
			<form:input class="form-control col-sm-7" path="justification" />
		</div>

		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="reason">Raison</form:label>
			<form:input class="form-control col-sm-7" path="reason" />
		</div>

		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="nbDay">Nombre de jour</form:label>
			<form:input class="form-control col-sm-7" path="nbDay" />
		</div>

		<form:hidden path="employee" value="${employee.idEmployee}" />

		<div class="row form-group ml-4">
			<input class="form-control btn btn-primary col-sm-2" type="submit"
				value="Valider" />
		</div>
	</form:form>
</body>
</html>