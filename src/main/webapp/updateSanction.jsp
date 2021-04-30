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
	<h2>Formulaire modification sanction pour ${employee.name} ${employee.lastName}</h2>
	<form:form action="update" modelAttribute="sanction">
		
		<form:hidden path="idSanction"/><br>
		
		<form:label path="description">Description</form:label>
		<form:input path="description" /><br>
		
		<form:label path="sanctionType">Type de sanction</form:label>
		<form:input path="sanctionType" /><br>
		
		<form:hidden path="employee" value="${employee.idEmployee}"/><br>
		
		<input type="submit" value="Valider" />
	</form:form>
</body>
</html>