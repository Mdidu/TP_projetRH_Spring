<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>form ajout congé pour ${employee.name} ${employee.lastName}</h2>
	<form:form action="save" modelAttribute="holiday">
		<form:label path="holidayPay">Solde de congé</form:label>
		<form:input path="holidayPay" /><br>
		
		<form:label path="startDate">Date de début (format mm/dd/yy)</form:label>
		<form:input path="startDate" /><br>
		
		<form:label path="endDate">Date de fin (format mm/dd/yy)</form:label>
		<form:input path="endDate" /><br>
		
		<form:label path="requestDate">Date de demande (format mm/dd/yy)</form:label>
		<form:input path="requestDate" /><br>
		
		<form:hidden path="employee" value="${employee.idEmployee}"/><br>
		
		<input type="submit" value="Valider" />
	</form:form>
</body>
</html>