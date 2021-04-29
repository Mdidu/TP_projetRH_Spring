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
			<th>Code</th>
			<th>Nom</th>
			<th>Prenom</th>
			<th>Adresse</th>
			<th>Tel</th>
			<th>Salaire</th>
			<th>Supprimer</th>
			<th>Modifier</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${employe}" var="e">
		<tr >
			<td>${ e.idEmployee }</td>
			<td>${ e.name }</td>
			<td>${ e.lastName }</td>
			<td>${ e.adress }</td>
			<td>${ e.average }</td>
			<td>${ e.telNumber }</td>
			<td><a href="delete?id=${e.idEmployee}">Supprimer</a></td>
			<td><a href="edit?id=${e.idEmployee}">Modifier</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>