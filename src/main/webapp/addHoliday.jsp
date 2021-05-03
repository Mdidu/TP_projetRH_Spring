<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajout congé</title>
<link href="../webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container-fluid">
	<h2 class="text-center">form ajout congé pour ${employee.name}
		${employee.lastName}</h2>
	<form:form action="save" modelAttribute="holiday">
	
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="holidayPay">Solde de congé</form:label>
			<form:input class="form-control col-sm-9" path="holidayPay" />
		</div>
		
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="startDate">Date de début (format mm/dd/yy)</form:label>
			<form:input class="form-control col-sm-9" path="startDate" />
		</div>
		
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="endDate">Date de fin (format mm/dd/yy)</form:label>
			<form:input class="form-control col-sm-9" path="endDate" />
		</div>
		
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="requestDate">Date de demande (format mm/dd/yy)</form:label>
			<form:input class="form-control col-sm-9" path="requestDate" />
		</div>

		<form:hidden path="employee" value="${employee.idEmployee}" />

		<div class="row form-group ml-4">
			<input class="form-control btn btn-primary col-sm-2" type="submit" value="Valider" />
		</div>
	</form:form>
</body>
</html>