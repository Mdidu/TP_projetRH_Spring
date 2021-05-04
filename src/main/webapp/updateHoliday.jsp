<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modifier sanction</title>
<script defer="defer" src="../webjars/jquery/1.9.1/jquery.min.js"></script>
<script defer="defer" src="../webjars/popper.js/1.16.0/umd/popper.min.js"></script>
<script defer="defer" src="../webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link href="../webjars/bootstrap/4.6.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="container-fluid">
	<c:import url="http://localhost:8082/projetRH/navbar.html" />

	<h2 class="text-center">Formulaire modification congé pour
		${employee.name} ${employee.lastName}</h2>
	<form:form action="update" modelAttribute="holiday">

		<form:hidden path="idHoliday" />

		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="holidayPay">Solde de congé</form:label>
			<form:input class="form-control col-sm-7" path="holidayPay" />
		</div>
		
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="startDate">Date de début (format mm/dd/yy)</form:label>
			<fmt:formatDate value="${holiday.startDate}" var="start" pattern="MM/dd/yy" />
			<form:input class="form-control col-sm-7" type="date" path="startDate" value="${start}" />
		</div>
		
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="endDate">Date de fin (format mm/dd/yy)</form:label>
			<fmt:formatDate value="${holiday.endDate}" var="end" pattern="MM/dd/yy" />
			<form:input class="form-control col-sm-7" type="date" path="endDate" value="${end}" />
		</div>
		
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="requestDate">Date de demande (format mm/dd/yy)</form:label>
			<fmt:formatDate value="${holiday.requestDate}" var="request" pattern="dd/MM/yyyy" />
			<form:input class="form-control col-sm-7" type="date" path="requestDate" value="${request}" />
		</div>

		<form:hidden path="employee" value="${employee.idEmployee}" />

		<div class="row form-group ml-4">
			<input class="form-control btn btn-primary col-sm-2" type="submit" value="Valider" />
		</div>
	</form:form>
	
	<c:import url="http://localhost:8082/projetRH/footer.html" />
</body>
</html>