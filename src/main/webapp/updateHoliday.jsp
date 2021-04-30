<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Formulaire modification congé pour ${employee.name} ${employee.lastName}</h2>
	<form:form action="update" modelAttribute="holiday">
		
		<form:hidden path="idHoliday"/><br>
		
		<form:label path="holidayPay">Solde de congé</form:label>
		<form:input path="holidayPay"/><br>
		
		<form:label path="startDate">Date de début (format mm/dd/yy)</form:label>
		<fmt:formatDate value="${holiday.startDate}" var="start" pattern="MM/dd/yy" />
		<form:input type="date" path="startDate" value="${start}"/><br>
		
		<form:label path="endDate">Date de fin (format mm/dd/yy)</form:label>
		<fmt:formatDate value="${holiday.endDate}" var="end" pattern="MM/dd/yy" />
		<form:input type="date" path="endDate" value="${end}"/><br>
		
		<form:label path="requestDate">Date de demande (format mm/dd/yy)</form:label>
		<fmt:formatDate value="${holiday.requestDate}" var="request" pattern="MM/dd/yy" />
		<form:input type="date" path="requestDate"  value="${request}"/><br>
		
		<form:hidden path="employee" value="${employee.idEmployee}"/><br>
		
		<input type="submit" value="Valider" />
	</form:form>
</body>
</html>