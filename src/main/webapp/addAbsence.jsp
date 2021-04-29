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
	<h2>Formulaire ajout absence pour ${employee.name} ${employee.lastName}</h2>
	<form:form action="saveAbsence" modelAttribute="absence">
		<form:label path="justification">Justificatif</form:label>
		<form:input path="justification" /><br>
		
		<form:label path="reason">Raison</form:label>
		<form:input path="reason" /><br>
		
		<form:label path="nbDay">Nombre de jour</form:label>
		<form:input path="nbDay" /><br>
		
		<form:hidden path="employee" value="${employee.idEmployee}"/><br>
		
		<input type="submit" value="Valider" />
	</form:form>
</body>
</html>