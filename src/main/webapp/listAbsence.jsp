<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cc" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des absences</title>
<link href="../webjars/bootstrap/4.6.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="container-fluid">
	<cc:import url="http://localhost:8082/projetRH/navbar.html" />

<table id="table-1" class="table table-striped table-bordered">
	<thead class="thead-dark">
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
		<tr>
			<td>${ a.justification }</td>
			<td>${ a.reason }</td>
			<td>${ a.nbDay }</td>
			<td><a class="btn btn-primary" href="delete?id=${a.idAbsence}">Supprimer</a></td>
			<td><a class="btn btn-primary" href="edit?id=${a.idAbsence}">Modifier</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>