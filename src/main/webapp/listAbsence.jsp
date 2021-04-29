<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table id="table-1">
	<thead>
		<tr>
			<th>Justificatif</th>
			<th>Raison</th>
			<th>Nombre de jour</th>
			<th>Supprimer</th>
			<th>Modifier</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${absence}" var="a">
		<tr >
			<td>${ a.justification }</td>
			<td>${ a.reason }</td>
			<td>${ a.nbDay }</td>
			<td><a href="deleteAbsence?id=${a.idAbsence}">Supprimer</a></td>
			<td><a href="editAbsence?id=${a.idAbsence}">Modifier</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>